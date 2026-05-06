% Extract data
t = out.tout;

I = out.Current.Data;
I = smoothdata(I,'movmean',20);

figure;

hold on

plot(t(I>=0),I(I>=0),'b','LineWidth',1.5)
plot(t(I<0),I(I<0),'r','LineWidth',1.5)

legend('Discharge','Charge')

xlabel('Time (s)')
ylabel('Current (A)')
title('Charge/Discharge Regions')

grid on