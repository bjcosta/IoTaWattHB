# Single Power Transformer

I have a single power point in my mains power meter box and would like to prevent as much clutter as possible so decided to experiment with using a single VT to sample the voltage of the mains while at the same time powering the IoTaWatt. 

Looking at other projects like emonTX https://shop.openenergymonitor.com/emontx-v3-electricity-monitoring-transmitter/ this seems feasible to achieve.

Apparently this was something that Bob looked into, and there are a few problems with it:
* Stable ground reference
* High power usage of NodeMCU (ESP8266)

The NodeMCU (ESP8266) draws a lot of power when TX'ing on WiFi, more than will work with the same circuit used with the emonTX (Half wave rectified power supply).

With a full wave rectifier there are some problems with choosing a stable ground reference and also sampling on the single ended ADC. 

After reading a few posts:
* https://openenergymonitor.org/forum-archive/node/309.html
* https://blog.openenergymonitor.org/2012/05/emontx-single-ac-power-supply/

I decided I would try the op-amp method, as we already have an op-amp to provide the BIAS voltage so I thought maybe I can just use a 4x opamp chip instead of the 2x opamp chip (also helped later with the pulse monitoring as well).

The basic idea is to use an op-amp to do a differential to single ended conversion. Below you can see the schematic diagram for this:

@todo Add schematic

I prototyped it all up on a breadboard and then tested with an oscilliscope. 

