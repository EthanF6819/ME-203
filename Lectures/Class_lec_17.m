% Jens Robison
% ME 203 
% 11/1 lecture 17

clc;clear all;format compact;
%% polynomial addition
% Format Workspace
clc;clear all; format compact;

p1=[3 15 0 -10 3 15 -40];
p2=[3 0 -2 -6];
p=p1+[0 0 0 p2]

%% multiplying polynomials
% Format Workspace
clc; format compact;

pm=conv(p1,p2)

%% poly division
% Format Workspace
clc; format compact;

num=[1 -4 2 -3];
den=[1 2];
[q,r]=deconv(num,den)
% q=x^2-6x+14

%% linear regression or trendline
% Format Workspace
clc;clear all; format compact;

x=0:5;
y=[0 20 60 68 77 110];
y_hat=20*x

% figure(1)
% plot(x,y,'o',x,y_hat)

Error=y_hat-y;
RMS=sqrt(mean(Error.^2))
RMS2=rms(Error)

%% polyfit / polyval
% Format Workspace
clc;clear all; format compact;

x=0:5;
y=[0 20 60 68 77 110];

C=polyfit(x,y,1)
y_hat=polyval(C,x)

% figure(1)
% plot(x,y,'o',x,y_hat)

Error=y_hat-y;
RMS=sqrt(mean(Error.^2))
RMS2=rms(Error)

%% poly integration
% Format Workspace
clc;clear all; format compact;

p=[3 15 -40];

% assumes C=0 if no C is given ex: q=polyint(p)
q=polyint(p,10)

%% poly differentiation
% Format Workspace
clc;clear all; format compact;

a=[1 -4 2 -3];
b=[1,2];
k=polyder(a,b)
[num,den]=polyder(a,b)





