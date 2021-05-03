%Cara Fabian L5T3
%Mech103 Final Project
%Date last updated : 11/17
%Social Distance Arduino

%Introduce Trig and Echo Pins for the ultrasonic sensor
clear;
TRIG_PIN = 'D10';
ECHO_PIN = 'D11';
% Setup arduino object
SocialDistanceArduino = arduino('COM3','UNO','libraries','ultrasonic');
% Setup ultrasonic sensor
ultraSensor = ultrasonic(SocialDistanceArduino,TRIG_PIN,ECHO_PIN);
%Convert feet into meters
six = 6/3.281
four = 4/3.281
two = 2/3.281

%Insert while loop that turns on a green LED (D3) when the object is more
%than 6 feet away, turns on one yellow LED (D4) when the object is 6 feet
%to 4 feet away, turns on two yellow LEDs (D4 and D5) when the object is 4
%feet to 2 feet away, turns on one red LED (D6) when the object is 2 or
%less feet away fromo the arduino

while(1)
    distance = readDistance(ultraSensor)
    %Set distance
    if distance>six
        %Turn on the green LED (D3), keep all other LEDs off
        writeDigitalPin(SocialDistanceArduino,"D3",1)
        writeDigitalPin(SocialDistanceArduino,"D4",0)
        writeDigitalPin(SocialDistanceArduino,"D5",0)
        writeDigitalPin(SocialDistanceArduino,"D6",0)
        %Set distance2
    elseif (distance<=six) && (distance>four)
        %Turn off green LED (D3) and turn on one yellow LED (D4) keep the
        %last yellow and red LEDs off
        writeDigitalPin(SocialDistanceArduino,"D3",0)
        writeDigitalPin(SocialDistanceArduino,"D4",1)
        writeDigitalPin(SocialDistanceArduino,"D5",0)
        writeDigitalPin(SocialDistanceArduino,"D6",0)
        %Set distance3
    elseif (distance<=four) && (distance>two)
        %Keep the yellow LED (D4) on and also turn on the second yellow LED
        %on (D5), keep green LED and red LED off
        writeDigitalPin(SocialDistanceArduino,"D3",0)
        writeDigitalPin(SocialDistanceArduino,"D4",1)
        writeDigitalPin(SocialDistanceArduino,"D5",1)
        writeDigitalPin(SocialDistanceArduino,"D6",0)
        %set distance4
    elseif distance<=two
        %Turn off the yellow LEDs (D4 and D5), keep the green LED off, and
        %turn on the red LED (D6)
        writeDigitalPin(SocialDistanceArduino,"D3",0)
        writeDigitalPin(SocialDistanceArduino,"D4",0)
        writeDigitalPin(SocialDistanceArduino,"D5",0)
        writeDigitalPin(SocialDistanceArduino,"D6",1)
    end
end
%End while loop, as experiment ends

