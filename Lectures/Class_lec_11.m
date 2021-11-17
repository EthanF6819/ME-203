% Jens Robison
% ME 203 
% 10/4 lecture 11

% Format workspace
clc;clear all;format compact;
%% Opperators help
help .

%% True False
clc;clear all;format compact;

% example 1 (less than)
A=1:1:9;
tf1=A<=4 
% example 2 (greater than)
B=7:-1:-1;
tf2=A>B
% example 3 (equal to)
tf3=(A==B)
% example 4 (maths with logical arrays)
tf4=B-(A>2)


%% logical opperators
% & = and   | = or   ~ = not
clc;clear all;format compact;

% example 1 (not)
A=1:9;
tf2= ~(A>4)
% example 2 (and)
tf3= (A>2)&(A<6)
% example 3 

% order of ops (),arethmetic operators and NOT(~) (L to R), 

%% test score example
% 50 percent needed to pass
pass=50;
score=[90 72 57 48 20 75];
pass_fail=score>50

%% if statements
% example 1
x=2; % given x=2
if x>0 % if x is greater than zero
    y=log(x); % then y = log(x)
end
y

%% if statement
clc;clear all;format compact;

% example 2
z=-3 % given
if z<=0
    z=10;
end
z=z+1
%% if/else statement
clc;clear all;format compact;

% example
x=-2;
if x>0
    y=log(x)
else
    y=NaN
    disp('Input to log fn must be positive')
end


%% elseif
if condition1
    comand1
elseif condition2
    comand2
else condition3
    comand3
end

%% nested structures
clc;clear all;format compact;

t=85;
if t>100
    disp('Too Hot')
elseif t>=90
    disp('Normal Range')
elseif t>50
    disp('Below Range')
else
    disp('Too Cold')
end
    
%% repetition structures (loops)
clc;clear all;format compact;


%        for loop format
    %for loop_var=start_var:end_var
    %    commands
    %end

% example loop with if
for loop_var=1:10
    fprintf('iteration number %d\n',loop_var)
    if loop_var==5
        break
    end
end

%% loop example 2
clc;clear all;format compact;

% given
k=5:10:35;

% calculate length of vector k
L=length(k)

% calculate x
for i=1:L
    x(i)=k(i)^2;
end

% display answer
x



