%Finding Magnitude & Phase
clc; clear all; close all;
W= exp(-1*j*2*pi/8);
for r=1:7
    fprintf('W(%d)= %f+(%f)j\n', r-1, real(W^(r-1)), imag(W^(r-1)))
    fprintf('Magnitude: %f\n', abs((((real(W^(r-1))+ (j*(imag(W^(r-1)))))))))
    fprintf('Phase: %f\n', phase((((real(W^(r-1))+ (j*(imag(W^(r-1)))))))))
end


%%
%Periodicity Properties
clc; clear all; close all;
W= exp(-1*j*2*pi/8);
r= input('Enter r:  ');
for r= 0:8
    fprintf('W(r): W(%d)= %f+ %fj \n',r,real(W^(r)), imag(W^(r)));
    fprintf('W(r+N): W(%d)= %f+ %fj \n',r+8,real(W^(r+8)), imag(W^(r+8)));
end

%%
%Symmetry Property
clc; clear all; close all;
W= exp(-1*j*2*pi/8);
r= input('Enter r:  ');
for r= 0:8
    fprintf('W(r): W(%d)= %f+ %fj \n',r,real(W^(r)), imag(W^(r)));
    fprintf('W(r+N/2): W(%d)= %f+ %fj \n',r+8/2,real(W^(r+8/2)), imag(W^(r+8/2)));
end
%%
%Smith Chart
syms z0;
t=linspace(0,2*pi,100);
x=cos(t);
y=sin(t);
plot(x,y,'linewidth',3);
axis equal;
title('Smith Chart');
set(gca, 'xticklabel',{[]});
set(gca, 'yticklabel',{[]});
hold on;
k=[.25 .5 .75];
for i=1:length(k)
    x(i,:)=k(i)+(1-k(i))*cos(t);
    y(i,:)=(1-k(i))*sin(t);
    plot(x(i,:),y(i,:),'k');
end
kt=[2.5 pi 3.79 4.22];
k=[.5 1 2 4];
for i=1:length(kt)
    t=linspace(kt(i),1.5*pi,50);
    a(i,:)=1+k(i)*cos(t);
    b(i,:)=k(i)+k(i)*sin(t);
    plot(a(i,:),b(i,:),'k:',a(i,:),-b(i,:),'k:');
end

smith_ch_calc(Z0,Z1)
z1=Z1/Z0;
g=(z1-1)/(z1+1);
m=abs(g)
th=angle(g);
polar(th,m,'r*');
thd=th*180/pi
swr=(1+m)/(1-m+eps)
rloss=-20*log10(m+eps)

[d1,d2]=smith_chart_stubc(Z0,Z1)
z1=Z1/Z0;
g=(z1-1)/(z1+1);
m=abs(g);
th=angle(g);
polar(th,m,'r*');
h=circle(0,0,m);
[xout,yout]=circcirc(0,0,m,0.5,0,0.5);
g=atan(yout(1)/xout(1));
gd=g*180/pi;
thd=th*180/pi;
thd1=180+thd;
ph1=thd1-gd;
d1=ph1/720;
ph2=180-gd;
d2=ph2/720;

h=circle(x,y,r)
hold on;
th=0:pi/50:2*pi;
xunit=r*cos(th)+x;
yunit=r*sin(th)+y;
h=plot(xunit,yunit);
hold off;
