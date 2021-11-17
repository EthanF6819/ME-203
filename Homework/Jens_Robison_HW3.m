% Jens Robison
% ME 203 
% Homework 3

clc;clear all;format compact;

%% Problem 1

% Format Workspace
clc;clear all;format compact;

% Given
A=[0 -7 6
    5 -4 3
    10 -1 9
    15 1 0
    20 2 -1];
% Calculate
t=A(:,1);
y1=A(:,2);
y2=A(:,3);

% Plot
figure (1)
plotyy(t,y1,t,y2)

%% Problem 2

% Format Workspace
clc;clear all;format compact;

% Given
A=[3 7 -4 12
    -5 9 10 2
    6 13 8 11
    15 5 4 1];

% Part A
B=A(:,2:end)

% Part B
C=A(2:end,:)

% Part C
D=A(1:2,2:end)

%% Problem 3

% Format Workspace
clc;clear all;format compact;

% Given
A=[56 32; 24 -16];
B=[14 -4; 6 -2];

% Part A
a=A.*B

% Part B
b=A/B

% Part C
c=A.^3

%% Problem 4

% Format Workspace
clc;clear all;format compact;

a=6*pi*atan(12.5)+4
b=5*tan(3*asin(13/5))

%% Problem 5

% Format Workspace
clc;clear all;format compact;

% Part A
syms x y
aeqn1=-2*x+y==-5;
aeqn2=-2*x+y==3;
asol = solve([aeqn1, aeqn2], [x, y]);
axSol = asol.x
aySol = asol.y

% Part B
syms x y
beqn1=-2*x+y==3;
beqn2=-8*x+4*y==12;
bsol = solve([beqn1, beqn2], [x, y]);
bxSol = bsol.x
bySol = bsol.y

% Part C
syms x y
ceqn1=-2*x+y==-5;
ceqn2=-2*x+y==-5.00001;
csol = solve([ceqn1, ceqn2], [x, y]);
cxSol = csol.x
cySol = csol.y

% Part D
syms x1 x2 x3 x4
deqn1=x1+5*x2-x3+6*x4==19;
deqn2=2*x1-x2+x3-2*x4==7;
deqn3=-x1+4*x2-x3+3*x4==30;
deqn4=3*x1-7*x2-2*x3+x4==-75;
dsol = solve([deqn1, deqn2, deqn3, deqn4], [x1, x2, x3, x4]);
dx1Sol = dsol.x1
dx2Sol = dsol.x2
dx3Sol = dsol.x3
dx4Sol = dsol.x4

%% Problem 6

% Format Workspace
clc;clear all;format compact;

% Given
t=1:.1:3
T=6*log(t)-7*exp(0.2*t)

% Plot
figure(6)
plot(t,T)
title('Temperature in Degrees Celsius vs Time')
xlabel('Time (min)')
ylabel('Temperature (C)')

%% Problem 7

% Format Workspace
clc;clear all;format compact;


a=2;
b=2;
c=3;
d=4;

(a==b)&((b==c)|(a==c))
(a==b)|((b==c)&(a==c))

%% Problem 8 Part A
% Format Workspace
clc;clear all; format compact;

x=input('Numerical Grade: ');

if x>0
    grade='F';
    if x>=60
        grade='D';
        if x>=70
            grade='C';
            if x>=80
                grade='B';
                if x>=90
                    grade='A';
                end
            end
        end
    end
end
grade

%% Problem 8 Part B
% Format Workspace
clc;clear all; format compact;

y=input('Numerical Grade: ');

if y>100
    disp('Not in Interval')
elseif y>=90
    disp('A')
elseif y>=80
    disp('B')
elseif y>=70
    disp('C')
elseif y>=60
    disp('D')
elseif y<60
    disp('F')
end