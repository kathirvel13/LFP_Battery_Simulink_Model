% Simple estimation using gradient
dV = diff(V);
dI = diff(I);

R = dV ./ dI;

% Clean invalid values
R(abs(dI) < 0.001) = NaN;

figure;
plot(t(1:end-1), R)
grid on
ylabel('Resistance (Ohm)')
xlabel('Time (s)')
title('Internal Resistance Estimate')