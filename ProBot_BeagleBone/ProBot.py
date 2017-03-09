#!/usr/bin/python

# Python Standard Library Imports
import sys
import os
import math
import decimal
import time
import datetime

import SabertoothFile
import PIDControllersFile
import EncodersFile
import ProBotConstantsFile
import PWMFile
import WebPageFile
import RestartProgramFile
import MotorsControlFile
import StartFile
import mpu6050File

# Initialization of classes from local files
InitProgram = StartFile.StartFileClass()
RestartProgram = RestartProgramFile.RestartProgramClass()
Sabertooth = SabertoothFile.SabertoothClass()
PID = PIDControllersFile.PIDControllersClass()
Encoders = EncodersFile.EncodersClass()
Pconst = ProBotConstantsFile.Constants()
PWM = PWMFile.PWMClass()
WebPage = WebPageFile.WebPageClass()
MotorsControlSignals = MotorsControlFile.MotorsControlClass()
InitParameters = InitProgram.StartProgram()
userChoice = InitParameters[0]
mpu6050=mpu6050File.mpu6050Class()

class ProBot():
   
    def __init__(self,  LoopTimeResult=0):
	self.LoopTimeResult=LoopTimeResult
	

    def mainRoutine(self):
	try:

		# Calibration of MPU6050
		mpu6050.Calibration()
		time.sleep(1)
        	
		while True:
		
		    
		    LoopTime=time.time()
		
		    # Readings from the encoders
                    EncodersReadings = Encoders.EncodersValues()
		    wheelPosition1  = EncodersReadings [0]               
		    wheelPosition2 = EncodersReadings [1]
		
		    # Reading the values from the webpage
                    WebPage_info = WebPage.WebPage_Values()
                    PositionRef = WebPage_info [0]
                    TurnMotorRight = WebPage_info [1]
               	    TurnMotorLeft = WebPage_info [2]		
		
		    # Reading the MPU6050 values and use the complementary filter to get better values 
		    ComplementaryAngle=mpu6050.Complementary_filter(self.LoopTimeResult)
			   
		    # Checking if the angle is out of range
		    if ComplementaryAngle<-20 or ComplementaryAngle>20:
			RestartProgram.RestartProgramRoutine(userChoice)
			    
		  	    
		    # With the values from the WebPage, we can calculate the outputs from the controllers
               	    PositionController1 = PID.standardPID((PositionRef+TurnMotorRight), wheelPosition1, 'Position1', userChoice)
                    PositionController2 = PID.standardPID((PositionRef+TurnMotorLeft), wheelPosition2, 'Position2', userChoice)
		    #print PositionController1                
		    rightMotor = PID.standardPID(PositionController1, ComplementaryAngle, 'Angle1', userChoice)
                    leftMotor = PID.standardPID(PositionController2, ComplementaryAngle, 'Angle2', userChoice)
 		
 		    # Sending the right values to the Sabertooth or the PWM controller
	            MotorsControlSignals.MotorsControl(rightMotor, leftMotor, userChoice)
		
		    LoopTime2=time.time()
	            self.LoopTimeResult=LoopTime2-LoopTime	

	except:
		    InitProgram.StopProgram()
 		    print("Unexpected error:\n", sys.exc_info()[0])
		    sys.exit('\n\nPROGRAM STOPPED!!!\n')
                    raise


    def main(self):
	if userChoice=='1':
        	Sabertooth.CommunicationStart()
	if userChoice=='2':
		PWM.PWMStart()
        ProBot.mainRoutine()

if __name__ == '__main__':
    ProBot = ProBot()
    ProBot.main()

