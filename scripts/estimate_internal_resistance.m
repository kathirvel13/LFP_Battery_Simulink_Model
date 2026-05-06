t = out.tout;
V = out.Voltage.Data;
I = out.Current.Data;

threshold = 2;

idx = find(abs(diff(I)) > threshold);

R = [];
time_R = [];

for k = 1:length(idx)

    i = idx(k);

    if i > 5 && i+5 <= length(V)

        % Average before step
        V_before = mean(V(i-5:i-1));
        I_before = mean(I(i-5:i-1));

        % Average after step
        V_after = mean(V(i+1:i+5));
        I_after = mean(I(i+1:i+5));

        dV = V_after - V_before;
        dI = I_after - I_before;

        if abs(dI) > 0.5

            % Internal resistance
            R_est = abs(dV / dI);

            R = [R; R_est];
            time_R = [time_R; t(i)];

        end
    end
end

figure;
plot(time_R, R*1000, 'o-', 'LineWidth', 1.5)

grid on
xlabel('Time (s)')
ylabel('Internal Resistance (mOhm)')
title('Battery Internal Resistance Estimation')