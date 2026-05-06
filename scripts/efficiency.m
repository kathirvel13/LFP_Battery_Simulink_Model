% Extract data
t = out.tout;

V = out.Voltage.Data;
I = out.Current.Data;

P = V .* I;

Pin = abs(P(P<0));
Pout = P(P>0);

eta = (sum(Pout)/(sum(abs(P))+eps))*100;

disp(['Battery Efficiency = ',num2str(eta),' %'])