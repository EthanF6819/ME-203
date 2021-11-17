% Jens Robison
% ME 203 
% 11/8 lecture 19

% Format Workspace
clc;clear all; format compact;
%% single integration
% Format Workspace
clc;clear all; format compact;

xmin=0;
xmax=pi;
F=@(x) sin(x)+cos(x);
q=integral(F,xmin,xmax)

%% double integration
% Format Workspace
clc;clear all; format compact;

xmin=2; xmax=4;
ymin=1; ymax=2;

F=@(x,y) (6*x.*y.^2);
q=integral2(F,xmin,xmax,ymin,ymax)

%% double integration example
% Format Workspace
clc;clear all; format compact;

xmin=0; xmax=1;
ymin=0; ymax=@(x) 1-x;

F=@(x,y) 1./(sqrt(x+y).*(1+x+y));
q=integral2(F,xmin,xmax,ymin,ymax)

%% 
% Format Workspace
clc;clear all; format compact;























