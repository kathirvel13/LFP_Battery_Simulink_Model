% Extract data
t = out.tout;

I = out.Current.Data;
T = out.Temperature.Data;

I = smoothdata(I,'movmean',20);
T = smoothdata(T,'movmean',20);

figure;

scatter(I,T,40,V,'filled')

colorbar

xlabel('Current (A)')
ylabel('Temperature (C)')
title('Battery Operating Region')
grid on