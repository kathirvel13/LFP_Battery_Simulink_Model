data = readtable('House_18.csv');
%head(data)
%summary(data)
P_total = sum(data{:,3:end},2);

V_batt = 24;
I_load = P_total ./ V_batt;

t = (0:length(I_load)-1)';
charge_idx = (t > 50000 & t < 120000) | (t > 270000 & t < 410000);
I_load(charge_idx) = I_load(charge_idx) - 40;

I_load = smoothdata(I_load,'movmean',10);

time = (0:length(I_load)-1)';
Current_Profile = timeseries(I_load,time);