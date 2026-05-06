% Extract data
t = out.tout;

TSI = out.thermal_stress.Data;

TSI = smoothdata(TSI,'movmean',20);

figure;
plot(t,TSI,'LineWidth',1.5)

grid on
xlabel('Time (s)')
ylabel('Thermal Stress')
title('Battery Thermal Stress Index')