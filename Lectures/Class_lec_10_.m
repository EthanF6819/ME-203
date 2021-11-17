% Jens Robison
% ME 203 
% 9/29 lecture

% Format workspace
clc;clear all;format compact;

%% Matrix Intro
% Matrix
A=[1 2 3; 4 5 6; 7 8 9];
A(2,3)
A=[1 2 3
    4 5 6
    7 8 9]

%% sub matrix
A=[1 2 3; 4 5 6; 7 8 9];
A2=A(1:2,1:3)
%A=(1:2, : )

%% Size and length
S=size(A2)
[r,c]=size(A2)
n=length(A2)

%% Transpose
x=0:4
x'
y=[5:5:25]
A=[x' y']

%% Scalar matrix multiplication
g=2*A2-1

%% matrix matrix multiplication
A=[2 5 1;0 3 -1];
B=[1 0 2; -1 4 -2; 5 2 -1];
C=A*B
% C2=B*A % doesnt work b/c sizes dont match (last must = first)
% ([2x3]*[3x4] ok)


%% special matricies
O=ones(3)
O2=ones(3,2)
Z=zeros(3)
Z2=zeros(2,4)

Z(2,2)=38

I=eye(3)
I2=eye(3,2)

%% determinant of a square matrix
A=[2 -4;3 6];
det(A)

%% Inverse
A=[2 -4;3 6];
IN=inv(A)

%% 
