% Battery capacity (Ah)
C = Battery.Capacity_Ah;

% Convert current to Ah
SoC = Battery.Initial_SoC - cumtrapz(t, I) / (C * 3600);

% Limit between 0–1
SoC = max(0, min(1, SoC));

figure;
plot(t, SoC * 100, 'LineWidth', 1.5)
grid on
ylabel('SoC (%)')
xlabel('Time (s)')
title('State of Charge')