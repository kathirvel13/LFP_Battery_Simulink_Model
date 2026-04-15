% Simple estimation using gradient
dV = diff(V);
dI = diff(I);

threshold = 1; % A
idx = find(abs(diff(I)) > threshold);

R = zeros(size(idx));

for k = 1:length(idx)
    i = idx(k);
    dV = V(i+1) - V(i);
    dI = I(i+1) - I(i);
    R(k) = dV / dI;
end

figure;
plot(R, 'o-')
grid on
ylabel('Resistance (Ohm)')
xlabel('Time (s)')
title('Internal Resistance Estimate')