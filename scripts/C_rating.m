Capacity = 30;
I = smoothdata(out.Current.Data,'movmean',20);

Crate = I / Capacity;

figure;
plot(t,Crate,'LineWidth',1.5)

grid on
xlabel('Time (s)')
ylabel('C-rate')
title('Battery C-rate')