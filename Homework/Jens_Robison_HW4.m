% Jens Robison
% ME 203 
% Homework 4

%% Problem 1 For loops
% Format Workspace
clc;clear all;format compact;

A=[3 5 -4; -8 -1 33; -17 6 -9];

for x=1:3
    for y=1:3
        if A(x,y)>=1 
            B(x,y)=log(A(x,y));
        elseif A(x,y)<=-1
            B(x,y)=A(x,y)+20;
        end
    end
end
B

%% Problem 1 No loops
% Format Workspace
% clc;clear all;format compact;

A=[3 5 -4; -8 -1 33; -17 6 -9];

% Row 1
if A(1,1)>=1 
    B(1,1)=log(A(1,1));
elseif A(1,1)<=-1
    B(1,1)=A(1,1)+20;
end
if A(1,2)>=1
    B(1,2)=log(A(1,2));
elseif A(1,2)<=-1
    B(1,2)=A(1,2)+20;
end
if A(1,3)>=1 
    B(1,3)=log(A(1,3));
elseif A(1,3)<=-1
    B(1,3)=A(1,3)+20;
end

% Row 2
if A(2,1)>=1
    B(2,1)=log(A(2,1));
elseif A(2,1)<=-1
    B(2,1)=A(2,1)+20;
end
if A(2,2)>=1
    B(2,2)=log(A(2,2));
elseif A(2,2)<=-1
    B(2,2)=A(2,2)+20;
end
if A(2,3)>=1
    B(2,3)=log(A(2,3));
elseif A(2,3)<=-1
    B(2,3)=A(2,3)+20;
end

% Row 3
if A(3,1)>=1
    B(3,1)=log(A(3,1));
elseif A(3,1)<=-1
    B(3,1)=A(3,1)+20;
end
if A(3,2)>=1
    B(3,2)=log(A(3,2));
elseif A(3,2)<=-1
    B(3,2)=A(3,2)+20;
end
if A(3,3)>=1
    B(3,3)=log(A(3,3));
elseif A(3,3)<=-1
    B(3,3)=A(3,3)+20;
end
B

%% Problem 2
% Format Workspace
clc;clear all; format compact;

k=1; b=-2; x=-1; y=-2;
while k<=3 
    k, b, x, y
    y=x^2 - 3;
    if y<b
        b=y;
    end
    x=x+1;
    k=k+1;
end

subplot(1,1,1)
img=imread('hw4_chart.png');
image(img);

%% Problem 3
% Format Workspace
clc;clear all; format compact;

Weight=input('What is the weight? ');
Material=input('What is the material?\n 1) Metal on metal\n 2) Wood on wood\n 3) Metal on wood\n 4) Rubber on concrete\n','s');

switch Material
    case {'1','Metal on metal'}
        Cf=.2;
    case {'2','Wood on wood'}
        Cf=.35;
    case {'3','Metal on wood'}
        Cf=.4;
    case {'4','Rubber on concrete'}
        Cf=.7;
end
F=Weight*Cf;

fprintf('Force = %.3f\n',F)

%% Problem 4
% Format Workspace
clc;clear all; format compact;

% x=[input('x1 = '),input('x2 = '),input('x3 = '),input('x4 = ')];
% y=[input('y1 = '),input('y2 = '),input('y3 = '),input('y4 = ')];

x=[-2 0 2 4];       %for ease of testing only
y=[-20 4 68 508];   %for ease of testing only

f=polyfit(x,y,3);
a=f(1); b=f(2); c=f(3); d=f(4);

fprintf('a = %f   b = %f   c = %f   d = %f\n Function = %.2fx^3 + %.2fx^2 + %.2fx + %.2f\n',a,b,c,d,a,b,c,d)

%% Problem 5
% Format Workspace
clc;clear all; format compact;

i=0;
for t=0:.001:4
    i=i+1;
    x(i)=5*t-10;
    y(i)=25*t^2-120*t+144;
end

d=sqrt(x.^2+y.^2);
Min_Distance=min(d);
Min_Time=(find(d==Min_Distance)-1)*.001;

fprintf('Time at Minimum Distance = %.3f seconds\nMinimum Distance = %.3f units from (0,0)\n' ,Min_Time,Min_Distance)







