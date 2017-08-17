# Probot BeagleBone

How to configure the ProBot BeagleBone:

Step 1 - Install the lastest debian image [from here](https://beagleboard.org/latest-images). 

Note: The Probot Project is working on a BeagleBone Black with debian 8.2 (jessie). 

Step 2 - The HDMI port causes interference on the functioning of the USB port and some Encoders GPIO's. To disable it, remove the # in front of the cape_disable command on the /boot/uEnv.txt so it looks like: 

    ##Disable HDMI
    cape_disable=capemgr.disable_partno=BB-BONELT-HDMI,BB-BONELT-HDMIN

Step 3 - Use git clone to download the ProBot's files.
	
	git clone https://github.com/VitorHugoAguiar/ProBot.git

Step 4  - Go to ProBot_BeagleBone with::
	
	cd ProBot/ProBot_BeagleBone
and:

Step 4.1 - To install everything that it's required to run ProBot's program, for debian images (jessie), just type:

	sudo ./setup.sh

It's going to be install [Machinekit](http://www.machinekit.io/), [Network-Manager](https://wiki.debian.org/NetworkManager) and [Crossbar](http://crossbar.io/).

Step 5 - To configure the networks and the BeagleBone's ip, type.

	sudo nmtui	

Step 6 - Go again to ProBot/ProBot_BeagleBone and run ProBot.py to initialize the program:

	cd ProBot/ProBot_BeagleBone
	sudo python ProBot.py
