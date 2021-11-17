function [output]= second_order_ODEs (tn,sn)
% outputs single order DE for
% tn= nth iteration
% sn=solution matrix for nth interation

% define variables in solution matrix
X1_dot=sn(1);
X2_dot=sn(2);

% create space for solution
output=zeros(2,1);

% set o eqns to solve
output(1)=X2_dot;
output(2)=-9.*X1_dot;

end