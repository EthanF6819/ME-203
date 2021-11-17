% Jens Robison
% ME 203 
% Homework 2

% Format workspace
clc;clear all;format compact;

%% Problem 1
clc;clear all;format compact;

% Given
x=[1:.2:5];
y=7*sin(4*x);

% Calculation
fprintf('the length of y is %4.0f elements and y(3) = %4.3f', length(y),y(3))

%% Problem 2
clc;clear all;format compact;

% Givens
x=sin(-pi()/2):0.05:cos(0);

% Calculation
fprintf('the length of the array is %4.0f elements and the tenth elemtent is = %4.3f', length(x),x(10))

%% Problem 3
clc;clear all;format compact;

% Calculation
p=[13,182,-184,2503];
roots(p)

%% Problem 4
clc;clear all;format compact;

% Calculation
a=6*pi()*atan(12.5)+4
b=5*tan(3*asin(13/5))

%% Problem 5
clc;clear all;format compact;

% Givens
r=10;
a=0:pi/50:4*pi;

% Equations
x=r*(a-sin(a));
y=r*(1-cos(a));

% Plot
figure(5)
plot(x,y)

%% Problem 6
clc;clear all;format compact;

% Givens
t=1:.05:3; % Seconds
T=(6*log(t))-(7*exp(0.2*t)); % Degrees Celsius

% Plot
figure(6)
plot(t,T)
title('Temperature with respect to Time')
xlabel('Time (min)')
ylabel('Temperature (C)')

%% Problem 7
clc;clear all;format compact;

% Givens
V=20:.5:100; % m^3
m1=1; % kg
m2=3; % kg
m3=7; % kg
R=286.7; % (N*m)/(kg*K)
T=293; % Kelvin

% Equations
p1=(m1*R*T)*(V.^-1);
p2=(m2*R*T)*(V.^-1);
p3=(m3*R*T)*(V.^-1);

% Plot
figure(7)
plot(V,p1,V,p2,V,p3)

%% Problem 8
clc;clear all;format compact;

% Givens
b1=.1;
b2=1;
b3=2;
t=0:1:100; 

% Equations
y1=1-exp(-b1*t);
y2=1-exp(-b2*t);
y3=1-exp(-b3*t);

% Plot
figure(8)
plot(t,y1)
hold on
plot(t,y2)
hold on
plot(t,y3)

% Time to reach 98%
tt=b2/.98;
fprintf('It will take %.2f units of time to reach 98 percent',tt)


%% Problem 9
clc;clear all;format compact;

% Givens
r=.1:.5:100;
V=(4/3)*pi*r.^3;
A=4*pi*r.^2;

% Plot
figure(9)
subplot(2,1,1)
loglog(r,V)
title('Radius vs Volume')
xlabel('Radius (m)')
ylabel('Volume (m^3)')

subplot (2,1,2)
loglog(r,A)
title('Radius vs Area')
xlabel('Radius (m)')
ylabel('Area (m^2)')

