% Jens Robison
% ME 203 
% 11/15 lecture 21

% Format Workspace
clc;clear all; format compact;

%% 2nd order DE's
% Format Workspace
clc;clear all; format compact;

% x range
tstart=0;
tfinal=5;
trange=[tstart tfinal];

% initial conditions
x0=0.05;
dx0=0;
initial=[x0 dx0];

% solve for x, t, dx/dt
[t s]=ode45('second_order_ODEs',trange,initial);


% function [output]= second_order_ODEs (tn,sn)
% % outputs single order DE for
% % tn= nth iteration
% % sn=solution matrix for nth interation
% 
% % define variables in solution matrix
% X1_dot=sn(1);
% X2_dot=sn(2);
% 
% % create space for solution
% output=zeros(2,1);
% 
% % set o eqns to solve
% output(1)=X2_dot;
% output(2)=-9.*X1_dot;
% 
% end










