# Battery Parameters

### To be measured:

* Voltage  
* Current  
* Temperature

### To be calculated:

* Energy  
* Power  
* Open Circuit Voltage (OCV)  
* SoC  
* SoH  
* DoD (Depth of Discharge)  
* C rating  
* Cycle counting  
* Internal resistance

### To be graphed:

* SoC vs time  
* SoH vs time or cycle  
* Temperature vs time  
* Internal resistance vs time or cycle  
* Charge-Discharge efficiency curve  
* Voltage vs SoC Curve

### To be predicted:

* Remaining Useful Time (RUL)  
* Capacity Fade Rate  
* Estimate battery lifetime  
* Aging  
* Self-discharge rate  
* Fault prediction using voltage sag  
* Battery Health Index to predict next maintenance

### To be controlled:

* Cell Balancing  
* Charge Voltage Limits  
* Limit discharge rate

# Sensors required

1. Voltage & Current: INA219/INA226 (I2C-based)  
   Current: ACS712/ACS758 (hall-effect, analog)  
2. Temperature: DS18B20 or LM35  
3. Real-time clock: DS3231 RTC module  
4. BMS

# To be measured:

### Voltage

For 12V LFP (4 cells):  
Fully charged: 14.4–14.6 V  
Nominal: 12.8 V  
Empty (cutoff): 10–11 V

### Current

Measured by Shunt resistor or Hall-effect sensor  
Positive → Charging  
Negative → Discharging

### Temperature

Typical operating range:  
Ideal: 15°C – 35°C  
Max safe: \~60°C  
Importance:  
High temperature → faster degradation  
Low temperature → poor charging efficiency

# To be calculated:

### Energy

E \= V × Ah

### Power

P \= V × I

### Open Circuit Voltage (OCV)

Battery voltage when no load is connected

### SoC

1. Voltage-based SoC  
2. Coulomb counting

$\mathrm{SoC}(t) = \mathrm{SoC}(t_0) - \frac{1}{C}\int I(t)dt$

### SoH

SoH \= (Current Capacity / Original Capacity) ​× 100

### DoD (Depth of Discharge)

DoD \= 100 − SoC

### C rating

Charge/discharge speed relative to capacity.

C \= Current / Capacity

### Cycle counting

Total equivalent full cycles used.  
Method:  
2 half cycles \= 1 full cycle  
Accumulate DoD over time

### Internal resistance

New battery: \~2–5 mΩ  
Aged battery: \>10 mΩ

Resistance inside battery → indicator of aging.

R \= ΔV / ΔI

# To be graphed:

### SoC vs time

Shows usage pattern and discharge rate.

### SoH vs time or cycle

Shows degradation trend → critical for lifetime prediction.

### Temperature vs time

Identifies overheating or poor thermal design.

### Internal resistance vs time or cycle

Direct indicator of aging.

### Charge-Discharge efficiency curve

η \= (​Energyout / Energyin) ​​× 100

### Current vs Time

Load patterns, Peak demand, Stress on battery

### Power vs Time

Direct view of system demand profile

### Capacity vs Cycle Number

Direct visualization of degradation curve

# To be predicted:

### Remaining Useful Time (RUL)

Time or cycles left before failure.  
Estimated using:  
SoH trend  
Cycle count  
Temperature history

### Capacity Fade Rate

How fast the battery is losing capacity.

### Estimate battery lifetime

Typically,   
3000–6000 cycles  
8–15 years

### Aging

Caused by:  
High temperature  
High DoD  
High C-rate

### Self-discharge rate

Loss of charge without load.

### Fault prediction using voltage sag

Sudden voltage drop under load → indicates:  
High internal resistance  
Weak cells

### Battery Health Index to predict next maintenance

BHI \= f(SoH, R, Temperature, Cycles)

# To be controlled:

### Cell Balancing

Ensures all 4 cells stay equal (\~3.2V each).

### Charge Voltage Limits

Prevents overcharging

### Limit discharge rate

Prevents deep discharge damage