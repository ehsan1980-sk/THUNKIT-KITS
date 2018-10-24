# About #

Thunkit Electronics sells electronic kits for hobbyists and engineers alike. Available at [thunkitelectronics.com](https://thunkitelectronics.com/category.html?page=development) and [Tindie](https://www.tindie.com/stores/cmccaskey). All designs are open source with schematics, board layouts, code, and BOMs freely available.

## Description ###
![image goes here](IMAGES/MAKIT-THT_1.png)
The MAKIT-THT is an Arduino Uno compatible board that uses only through-hole components making it a perfect soldering kit. This kit is a perfect gateway into the world of electronics. Unlike some other soldering kits, the MAKIT-THT is more than just a novelty, it is a tool for continued electronics and programming learning.

## Why MAKIT-THT? ##
The MAKIT-THT is the only Arduino kit that uses all through hole parts and also includes the USB to UART interface IC. What this means to you is that the MAKIT-THT is a great tool to learn how to solder, basic electronics, and embedded programming. Unlike some other kits that are just a novelty after they are assembled, the MAKIT-THT is a tool for learning programming and can be used in your hobby projects.

## Technical Specifications ##

The MAKIT-THT uses the Atmega328p, the same as the Arduino Uno, and the MCP2221A USB to UART IC for the USB interface between the board and your PC. The MAKIT-THT includes both a 3.3V and 5V linear regulator capable of 300mA and 1A outputs respectively. The pinout of the board is identical to the Arduino Uno down to the ICSP header location on the board. A red LED is connected to pin 13 on the board for the famous BLINK sketch. All MAKIT-THTs come with the Atmega328p pre-programmed with the Optiboot bootloader. 

Note: the MCP2221A does not handle the reset during a sketch upload like a typical Uno, instead you must press the reset button on the MAKIT-THT to reset the board to upload sketches.

## Schematic ##
![image goes here](IMAGES/MAKIT-THT_SCHEM.png)

## Bill of Material ##
[Available Here](IMAGES/MAKIT-THT_BOM.html)

## Soldering Instructions ##
A general recommendation on the soldering order is to solder the lower profile comonents first and move upwards. For this kit the order would usually be resistors, capacitors, crystal, regulators, diodes, IC sockets, connectors, clean the bottom of the PCB with 91% isopropyl alchohol to remove flux, install Atmega328p and MCP2221A in their sockets paying close attention to the correct orientation indicated by the slot on the DIP socket and IC.

Note: Since the MAKIT-THT uses static sensitive ICs, it is important to observe proper ESD safety when assembling the board. For most people this will mean grounding themselves by touching a metal faucet or desk before starting work on their kit.
