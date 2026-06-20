# Front Panel
![Front Panel](https://raw.githubusercontent.com/kathirvel13/LFP_Battery_Simulink_Model/refs/heads/main/LabVIEW%20Battery%20Monitoring%20Interface/Front%20Panel.png)

# Block Diagram
![Block Diagram](https://raw.githubusercontent.com/kathirvel13/LFP_Battery_Simulink_Model/refs/heads/main/LabVIEW%20Battery%20Monitoring%20Interface/Block%20Diagram.png)

# Formulas used
Assume a Li-Po cell with nominal voltage 3.7 V

V<sub>new</sub> \= V<sub>old</sub> \- 0.05
V<sub>0</sub> \= 4.2 V

I<sub>max</sub> \= 3 A  
I \= random(0, 4000\) / 1000

T<sub>new</sub> \= T<sub>old</sub> \+ 0.1  
T<sub>0</sub> \= 20 &deg;C

P \= V \* I

E<sub>new</sub> \= E<sub>old</sub> \+ P \* (0.5 / 3600\) 
t \= 0.5 s

Battery Capacity \= 3Ah  
SoC<sub>new</sub> \= SoC<sub>old</sub> \- mod(I\) \* ((0.5 \* 3 \* 100\) / 3600\)

# Warning Indicator

| Condition | Meaning |
| ----- | ----- |
| Temperature \> 40°C | High Temperature |
| Voltage \< 3.3 V | Low Voltage |
| SoC \< 20% | Low SoC |
| Current \> 3 A | High Discharge |

