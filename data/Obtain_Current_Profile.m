% This script can make a current profile based on the power consumed data

data = readtable('House_18.csv');
%head(data)
%summary(data)

% Finding total power from the given csv data
P_total = sum(data{:,3:end},2);

% Calculating current
V_batt = 12;
I_load = P_total ./ V_batt;

% Making time-domain and introducing charging condition in given data
t = (0:length(I_load)-1)';
charge_idx = (t > 50000 & t < 120000) | (t > 270000 & t < 410000);
I_load(charge_idx) = I_load(charge_idx) - 40;

I_load = smoothdata(I_load,'movmean',10);

time = (0:length(I_load)-1)';
Current_Profile = timeseries(I_load,time);