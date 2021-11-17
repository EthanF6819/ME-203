% Jens Robison
% ME 203 
% 10/18 lecture 13


%% nested structures

 % Format workspace
clc;clear all;format compact;

% calculate k
for n=1:5
    k(n)=2*n-3;
    if (k(n)<0)
        disp('k is negative at')
        n
    end
end

%% fibonacci
% Format workspace
clc;clear all;format compact;

%givens
F(1)=0;
F(2)=1;

for i=3:30
    F(i)=F(i-1)+F(i-2);
end
F

%% while loops example
% Format workspace
clc;clear all;format compact;

loop_var=1;
while loop_var<=10
    fprintf('iteration number %d\n', loop_var)
    loop_var=loop_var+1;
end

% ctrl c in command window stop a loop (usefull if stuck in infinte loop)

%% while loops example 2
% Format workspace
clc;clear all;format compact;

j=1;
while j<10
    a=j*j;
    disp(a)
    j=j+2;
end

%% break 
% Format workspace
clc;clear all;format compact;

n=0
while n<=10
    n=n+1;
    y(n)=cos(n*pi/10);
    if y(n)<=10
        break
    end
    z(n)=log(y(n));
end
y
z

%% continue
% Format workspace
clc;clear all;format compact;

n=0
while n<=10
    n=n+1;
    y(n)=cos(n*pi/10);
    if y(n)<=0
        continue
    end
    z(n)=log(y(n));
end
y
z

%% switch case
% Format workspace
clc; clear all; format compact;

x=6.1; % meters
to_units='m'; %convert to
switch to_units
    case('meters','m')
        y=x
    case('centimeters','cm')
        y=100*x
    case('millimeters','mm')
        y=1000*x
    case('inches','in')
        y=39.3701*x
    otherwise('unknown units' to_units)
        y=NaN
end
y



