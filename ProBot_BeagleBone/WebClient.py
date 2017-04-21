#!/usr/bin/python

from __future__ import print_function
import sys
import os
import time

from os import environ
import six
from twisted.internet.defer import inlineCallbacks
from autobahn.twisted.util import sleep
from autobahn.twisted.wamp import ApplicationSession, ApplicationRunner
from twisted.logger import Logger
from twisted.internet._sslverify import OpenSSLCertificateAuthorities
from twisted.internet.ssl import CertificateOptions
from OpenSSL import crypto
from threading import Timer,Thread,Event


import SocketWebPageFile
import SocketBatteryFile
import SocketStartAndStop
import StartAndStop
import mpu6050File 

# Initialization of classes from local files
Pub_Sub = SocketWebPageFile.SocketClass()
Pub_Sub2 = SocketBatteryFile.SocketClass()
Pub_Sub3 = SocketStartAndStop.SocketClass()
StartAndStop = StartAndStop.StartAndStopClass()
mpu6050=mpu6050File.mpu6050Class()

class AppSession(ApplicationSession):
    
    log = Logger()

    @inlineCallbacks
    def onJoin(self, details):  	
	self.MainRoutine=0
    	self.AngleValue = 0
    	self.timerVariables=0
	
	def TimerVariablesToWebPage():	    
	    self.MainRoutine = StartAndStop.StartAndStop_Value()
	    self.AngleValue, gyro_yout_scaled = mpu6050.RollPitch()

	    self.timerVariables = Timer(0.005, TimerVariablesToWebPage)
	    self.timerVariables.start()	    
	    
        ## SUBSCRIBE to a topic and receive events
        def probot_topic(msg):
        	msg2=[msg.encode('utf-8') for msg in msg]
		print(msg2)
        	publisher1=Pub_Sub.publisher(msg2)
         	    
        sub = yield self.subscribe(probot_topic, 'probot-topic-probot_id')
        self.log.info("subscribed to topic 'probot-topic-probot_id'")

        ## SUBSCRIBE to a topic and receive events
        def probot_topic_StartAndStop(msg):
                msg2=[msg.encode('utf-8') for msg in msg]
                print(msg2)
                publisher2=Pub_Sub3.publisher(msg2)

        sub = yield self.subscribe(probot_topic_StartAndStop, 'probot-StartAndStop-probot_id')
        self.log.info("subscribed to topic 'probot-StartAndStop-probot_id'")


	self.publish('general-topic', "probot-probot_id")
	TimerVariablesToWebPage()
       	while True:
		## PUBLISH an event
       		Bat = Pub_Sub2.subscriber()

		if Bat==None:
			Bat=100	
		if self.AngleValue==None:
			self.AngleValue=90
		if self.MainRoutine==None:
			self.MainRoutine="0"

		self.publish('probot-bat-probot_id', Bat)
		self.publish('probot-angle-probot_id', self.AngleValue)
                self.publish('probot-mainRoutine-probot_id', self.MainRoutine)		
		self.log.info("published on probot-bat-probot_id: {msg}", msg=Bat)
		self.log.info("published on probot-angle-probot_id: {msg}", msg=self.AngleValue)
                self.log.info("published on probot-mainRoutine-probot_id: {msg}", msg=self.MainRoutine)
        	yield sleep(1)

    def onDisconnect(self):
	#global t
        print("disconnected")
	publisher=Pub_Sub.publisher("['0.000', '0.000', '0.000', '0.000']")  
	if self.timerVariables.isAlive():
		self.timerVariables.cancel()
		self.timerVariables.join(0)

if __name__ == '__main__':
    # load the self-signed cert the server is using
    cert = crypto.load_certificate(
        crypto.FILETYPE_PEM,
        six.u(open('/home/machinekit/ProBot/ProBot_BeagleBone/server.crt', 'r').read())
    )
    # tell Twisted to use just the one certificate we loaded to verify connections
    options = CertificateOptions(
        trustRoot=OpenSSLCertificateAuthorities([cert]),
    )
    # ...which we pass as "ssl=" to ApplicationRunner (passed to SSL4ClientEndpoint)
    runner = ApplicationRunner(
        environ.get("AUTOBAHN_DEMO_ROUTER", u"wss://server_ip:8080/ws"),
        u"realm1",
        ssl=options,  # try removing this, but still use self-signed cert
    )
    runner.run(AppSession, auto_reconnect=True)
