% Extract data
t = out.tout;

V = out.Voltage.Data;
I = out.Current.Data;
T = out.Temperature.Data;

% Plot
figure;

subplot(3,1,1)
plot(t, V, 'LineWidth', 1.5)
grid on
ylabel('Voltage (V)')
title('Battery Voltage')

subplot(3,1,2)
plot(t, I, 'LineWidth', 1.5)
grid on
ylabel('Current (A)')
title('Battery Current')

subplot(3,1,3)
plot(t, T, 'LineWidth', 1.5)
grid on
ylabel('Temperature (°C)')
xlabel('Time (s)')
title('Battery Temperature')