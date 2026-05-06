Voc = max(V);

Vsag = Voc - V;

Vfsag = smoothdata(Vsag,'movmean',20);

figure;
plot(t,Vfsag,'LineWidth',1.5)

grid on
xlabel('Time (s)')
ylabel('Voltage Sag (V)')
title('Voltage Sag vs Time')