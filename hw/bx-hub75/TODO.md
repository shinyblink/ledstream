# TODO List for bx-hub75
Thanks to @Georgeloak for the tips.

* [X] Header notch is the wrong way.
* [ ] Decoupling caps for Buffers, EEPROM and RS485 driver.
* [ ] Traces are way too close to the pads, see G1.
* [ ] Think about what kind of signals are going over there:
  - Is it just a simple high/low signal just used for a little bit? If so, it can be long and have vias.
  - Is it part of a group of signals like SPI? Keep the length close.
  - Is it a clock signal? It'll switch at high speed, so it could disturb a signal, give more room or shield in ground if appropriate.
* [X] Traces for 5V/3.3V are too small.
* [X] Bottom Ground plane is not very well connected to the top one.
* [X] Try to figure out where current flows:
  - Decoupling caps need to be in between the current flow to make sense.
* [X] Try to keep things wiring neat.
* [X] Consider SN74LVC8T245MDWREP instead of 74HCT541:
  - Getting close to the VIH Min rating of the part with the TinyFPGA 3.3v outputs.
  - The 541 can only deliver +-6ma, can't pull down OE.
* [X] Take some lessons from https://github.com/icebreaker-fpga/icebreaker-pmod/tree/master/led-panel/v1.2a
* [X] Not enough spacing for the HUB75 connector, need at least a millimeter more space.
* [X] Power socket from Mouser does not match footprint of PCB.
  - It will work with some filing and pressure, but it's far from ideal.
