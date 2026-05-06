% Extract data
t = out.tout;

V = out.Voltage.Data;
I = out.Current.Data;
T = out.Temperature.Data;

Vf = smoothdata(V,'movmean',20);
If = smoothdata(I,'movmean',20);
Tf = smoothdata(T,'movmean',20);

% Plot
figure;

subplot(3,1,1)
plot(t, Vf, 'LineWidth', 1.5)
grid on
ylabel('Voltage (V)')
title('Battery Voltage')

subplot(3,1,2)
plot(t, If, 'LineWidth', 1.5)
grid on
ylabel('Current (A)')
title('Battery Current')

subplot(3,1,3)
plot(t, Tf, 'LineWidth', 1.5)
grid on
ylabel('Temperature (°C)')
xlabel('Time (s)')
title('Battery Temperature')