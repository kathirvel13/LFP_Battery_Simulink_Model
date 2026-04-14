% Power
P = V .* I;

% Energy (Wh)
E = cumtrapz(t, P) / 3600;

figure;

subplot(2,1,1)
plot(t, P, 'LineWidth', 1.5)
grid on
ylabel('Power (W)')
title('Power vs Time')

subplot(2,1,2)
plot(t, E, 'LineWidth', 1.5)
grid on
ylabel('Energy (Wh)')
xlabel('Time (s)')
title('Energy vs Time')