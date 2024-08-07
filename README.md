# Traffic Light Controller in VHDL

This repository contains a VHDL implementation of a traffic light controller for a simple intersection with north-south and east-west directions. The controller operates based on a state machine and uses a generic parameter for the clock frequency to determine the timing of the traffic light signals.

## Features

- **Clock Frequency Configuration**: The "ClockFrequencyHz" generic parameter allows customization of the clock frequency to fit various system requirements.
- **State Machine Implementation**: The controller uses a finite state machine to manage the traffic light signals for both directions.
- **Signal Outputs**: Separate outputs for north-south and east-west traffic lights, including red, green, and yellow lights.

## Traffic Light Phases

1. **North-South Green**: North-south direction has a green light while east-west remains red.
2. **North-South Yellow**: North-south direction transitions to yellow before turning red.
3. **East-West Green**: East-west direction has a green light while north-south remains red.
4. **East-West Yellow**: East-west direction transitions to yellow before turning red.

## the concept : 
![Capture](https://github.com/user-attachments/assets/6ac97cad-250a-4e4e-a089-7114293218fe)


## wave form show which led is high and which state we currently at:



![waveform](https://github.com/user-attachments/assets/4cd1e20d-7ec1-4f29-807a-d8574e662043)

