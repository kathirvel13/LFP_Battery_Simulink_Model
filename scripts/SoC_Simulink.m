% Extract data
t = out.tout;

SoC = out.SoC.Data;

% Plot
figure;

plot(t, SoC, 'LineWidth', 1.5)
grid on
xlabel('Time (s)')
ylabel('SoC')
title('Battery SoC')