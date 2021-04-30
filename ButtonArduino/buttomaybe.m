clear;
button_arduino = arduino();

bbutton_pin = 'D10';
rbutton_pin = 'D9';
ybutton_pin = 'D8'

bLED_PIN = 'D4';
rLED_PIN = 'D5';
yLED_PIN = 'D6'

SPEAK_PIN = 'D3';

bbutton_state = readDigitalPin(button_arduino, bbutton_pin);
rbutton_state = readDigitalPin(button_arduino, rbutton_pin);
ybutton_state = readDigitalPin(button_arduino,ybutton_pin);

while (1)
    if bbutton_state == 1
        playTone(button_arduino, SPEAK_PIN, 220, 1.75)
        for outer_loop = 1:5
            writeDigitalPin(button_arduino, bLED_PIN, 1)
            pause(0.25)
            writeDigitalPin(button_arduino, bLED_PIN, 0)
            pause(0.1)
        end
        
    elseif rbutton_state == 1
        playTone(button_arduino, SPEAK_PIN, 330, 1.75)
        for outer_loop = 1:5
            writeDigitalPin(button_arduino, rLED_PIN, 1)
            pause(0.25)
            writeDigitalPin(button_arduino, rLED_PIN, 0)
            pause(0.1)
        end
        
    elseif ybutton_state == 1
        playTone(button_arduino, SPEAK_PIN, 440, 1.75)
        for outer_loop = 1:5
            writeDigitalPin(button_arduino, yLED_PIN, 1)
            pause(0.25)
            writeDigitalPin(button_arduino, yLED_PIN, 0)
            pause(0.1)
        end
    end
    bbutton_state = readDigitalPin(button_arduino, bbutton_pin);
    rbutton_state = readDigitalPin(button_arduino, rbutton_pin);
    ybutton_state = readDigitalPin(button_arduino, ybutton_pin);
end
