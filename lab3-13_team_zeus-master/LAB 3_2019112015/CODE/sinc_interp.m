function xr = sinc_interp(n,xn,Ts,t_fine)
wc= pi*(1/Ts);
xr=zeros(length(t_fine),1);
for k=1:length(t_fine)
    for j=1:length(n)
    xr(k)=xr(k)+((Ts*xn(j))*((sin(wc*(t_fine(k)-(n(j)*Ts))))/(pi*(t_fine(k)-(n(j)*Ts)))));
    end
end