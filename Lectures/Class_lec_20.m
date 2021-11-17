% Jens Robison
% ME 203 
% 11/10 lecture 20

% Format Workspace
clc;clear all; format compact;

%% differentiation 
% Format Workspace
clc;clear all; format compact;

x=0:10;
y=[5 4 2 3 4 7 9 7 6 5 4];

dx=diff(x)
dy=diff(y)
dy_dx=dy./dx % slope

%% differentiation example 2
% Format Workspace
clc;clear all; format compact;

x=linspace(0,pi,50);
y=sin(x);

n=length(x);

dy=y(3:n)-y(1:n-2);
dx=x(3:n)-x(1:n-2);

dy_dx=dy./dx % slope

% plot(x,y,x(2:n-1),dy_dx)  % supressed due to crash

%% ODE's  &  function ode45
% Format Workspace
clc;clear all; format compact;

% dy/dx+10y=0

xrange=[0 .5];
yinital=2;

[x,y]=ode45(@ODEEXAMPLE,xrange,yinital);

%% ODE example
% Format Workspace
clc;clear all; format compact;

xrange=[6,24];
yinital=-3;

[x,y]=ode45(@ODEEXAMPLE2,xrange,yinital)
