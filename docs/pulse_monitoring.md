# Pulse Monitoring

My initial design path was to make use of some of the existing ADC lines in IoTaWatt and sample those on a regular basis to do pulse monitoring. My assumptions on the design of the hardware and software however were incorrect and so this would not work out.

In particular the IoTaWatt ADC sampling works with 2x ADC chips (plus MicroSD) sharing a single SPI bus. When IoTaWatt wants to sample a channel, it does so in a blocking fashion for a bit over one 50Hz cycle. Then in a blocking call it will process other services (like HTTP POSTs etc). This design means you cant have a guarantee of how long between samples. 

