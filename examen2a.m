clear , clc
xu=0;
xl=2;
i=1;
e(i)=10;

while(e(i)>0.001)
xr=(xl+xu)/2;
g_xu=1+3*exp(xu)^xu-xu^4;
g_xl=1+3*exp(xl)^xl-xl^4;
g_xr=1+3*exp(xl)^xr-xr^4;

if(g_xu*g_xr<0)
xl=xr;
e(i+1)=abs(xu-xr)
end

if(g_xl*g_xr<0)
xu=xr;
e(i+1)=abs(xl-xr)
end 

if (gxu*gxr == 0)
    xr=xr;
end
i=i+1;
end
     

disp(xr)

tamanio=size(e);
ite= 1:1:tamanio(2);
figure('DefaultAxesFontSize',14)
set(gcf,'color','white');
plot(ite,e,'color',[1 0 0],'LineWidth',2);
grid on
hold on
plot(ite,xr,'color',[1 0 0],'LineWidth',2);
xlabel('Iterations')
ylabel('error')