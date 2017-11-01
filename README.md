# IoTaWattHB
IoTaWatt Homebrew is a repository for experimentation with new ideas against the official IoTaWatt project developed by Bob Lemaire (https://github.com/boblemaire/IoTaWatt).

This repository brings all 3rd party dependencies required to build IoTaWatt into a single folder for simple archiving/backup.

This is using git submodules to bring in all 3rd parties and the sources. The commands to manage the submodules may differ with your version of git


Building
--------

When building this project, I defined the following base locations. You can use whatever you like for these.


IOTAWATTHB_HOME=$HOME/dev/IoTaWattHB
ARDUINO_HOME=$IOTAWATTHB_HOME/arduino-1.8.5/


Checkout Source
---------------

First checkout the IoTaWattHB project
* mkdir $HOME/dev && cd $HOME/dev
* git clone ssh://git@github.com/bjcosta/IoTaWattHB.git

Then you need to pull in the 3rd party git submodules
* cd $IOTAWATTHB_HOME
* git submodule update --init --recursive

The repository uses a symlink to bring in Crypto library from arduinolibs. If you are building on windows, you will need to set up a manual junction:
** cd %IOTAWATTHB_HOME%\deps\libraries
** del Crypto
** mklink /j Crypto ..\arduinolibs\libraries\Crypto
** git update-index --assume-unchanged Crypto


Install Arduino IDE
-------------------

* https://www.arduino.cc/en/Main/Software (Used version 1.8.5)
* Extract the file to: ${ARDUINO_HOME}
** tar -xvJf arduino-1.8.5-linux64.tar.xz -C $IOTAWATTHB_HOME/
* cd ${ARDUINO_HOME} && ./arduino
* Change sketchbook location Menu: File -> Preferences
** Set Sketchbook location to: ${IOTAWATTHB_HOME}/deps
** I like to setup so that everything we depend on is in the projects folder so I can track versions for this project and return to it long in the future if I need to. Arduino is not great for this, but it is possible by changing your sketchbook location. Remember to restore it if you are working on other projects once you are finished with this one. 
** By doing this we can archive everything together (all 3rd party dependencies along with the module) and back it up.


Install ESP8266 dev tools
-------------------------

* http://esp8266.github.io/Arduino/versions/2.0.0/doc/installing.html
* The git submodule containing the dev tools has already been cloned under ${IOTAWATTHB_HOME}/deps/hardware/esp8266com/esp8266
* We still however need to download the necessary binaries for cross compiling
** cd ${IOTAWATTHB_HOME}/deps/hardware/esp8266com/esp8266/tools
** python get.py


Now compile the sketch
----------------------

* cd ${ARDUINO_HOME} && ./arduino
* Menu: File -> Open : ${IOTAWATTHB_HOME}/IoTaWatt/Firmware/IotaWatt/IotaWatt.ino
* Menu: Tools -> Board -> NodeMCU 1.0 (ESP-12E Module)
** Note: The 1.0 board is the one I was using, also known as 
* Menu: Sketch -> Verify/Compile


TODO
----

* Document setting up Exception decoder for Arduino ESP https://github.com/me-no-dev/EspExceptionDecoder
* Document setup of VisualMicro Visual Studio plugin http://www.visualmicro.com
* Document installation of FTDI drivers for Windows
** http://www.ftdichip.com/Drivers/VCP.htm
** http://www.ftdichip.com/Drivers/CDM/CDM%20v2.12.28%20WHQL%20Certified.zip
** http://www.ftdichip.com/Drivers/CDM/CDM21228_Setup.zip
* Document steps to upload and run a sketch

