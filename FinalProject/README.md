# Social Distancing Arduino
This code works with an Arduino, an ultrasonic sensor, and several LED lights hooked up to the Arduino.

This was created to test how well people were social distancing at the end of 2020. When someone was more than 6 feet away from the Arduino and it's ultrasonic sensor, a green LED would light up. When someone was 6 to 4 feet away, one yellow LED light would light up. When someone was 4 to 2 feet away, two yellow LED lights would light up, and lastly if someone was less than 2 feet away a red LED would light up.  

This allowed my group and I to analyze data from using this Arduino setup to present on how many people fit into each category of social distancing. 

* writeDigitalPin
This is the code to turn on a specific LED. The 1 meant that the light would be turned on by it's parameters in the elseif loop, and the 0 meant that the light would be turned off.
