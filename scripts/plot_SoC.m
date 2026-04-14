% Battery capacity (Ah)
C = 30;   % <-- match your battery block

% Convert current to Ah
SoC = 0.8 - cumtrapz(t, I) / (C * 3600);

% Limit between 0–1
SoC = max(0, min(1, SoC));

figure;
plot(t, SoC * 100, 'LineWidth', 1.5)
grid on
ylabel('SoC (%)')
xlabel('Time (s)')
title('State of Charge')