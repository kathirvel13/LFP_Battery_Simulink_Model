% Extract data
t = out.tout;

power = smoothdata(out.power.Data,'movmean',20);
energy = smoothdata(out.energy.Data,'movmean',20);

% Plot
figure;

subplot(2,1,1)
plot(t, power, 'LineWidth', 1.5)
grid on
ylabel('Power (W)')
title('Power vs Time')

subplot(2,1,2)
plot(t, energy, 'LineWidth', 1.5)
grid on
ylabel('Energy (Wh)')
xlabel('Time (s)')
title('Energy vs Time')