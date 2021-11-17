% Jens Robison
% ME 203 
% 11/3 lecture 18

%% Interpolation
% Format Workspace
clc;clear all; format compact;

x=0:5;
y=[0 20 60 68 77 110];
x1=[2.6 4.9];
y1=interp1(x,y,x1)

%% normal distribution
A=[1 2 3 3 3 6 4 6 8 4 7 7];
d=std(A)
v1=var(A)
v2=d^2

%% rand uniform distribution
rand
rand(2)
rand(2,3)

% rand between 5 and 15
rand(1,3);
10*rand(1,3);
A=10*rand(1,3)+5

%% heads or tails
flip1=round(rand(1,5))
% flip2=randn(1,5)
flip3=randi([0,1],1,5)

%% noisy signal simulation
t=linspace(0,10,512);
amp=1;
feq=2*pi/5;
sig=amp*sin(feq.*t)+randn(1,length(t))*0.1;

figure(1)
plot(t,sig)

%% trapz & cumtrapz

x=linspace(0,pi,100);
y=sin(x);
z1=trapz(x,y)
z2=cumtrapz(x,y);

figure(2)
plot(x,y,x,z2)
xlabel('x')
legend('sin(x)','\intsin(x)')
%% 


