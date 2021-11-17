% Jens Robison
% ME 203 
% Project 1, Task 1: User Inputs
% Tic Tac Toe 

% Format Workspace
clc;clear all; format compact;


t=[" " " " " "; " " " " " "; " " " " " "];
player=1;
win=0; % win = 1 when a player wins
turns=0;

while win==0 & turns<9
    fprintf('Player %.0f \n',player)
    x=input('x(row) = ');
    y=input('y(column) = ');

    if t(x,y) == ' ' & player==1 % mark X only if blank, player 1 move
        t(x,y)= 'X' ;
        player=2;
        turns=turns+1;
        % player 1 win conditions
% win conditions containing t(1,1)
        if t(1,1)=='X' 
            if t(1,2)=='X' & t(1,3)=='X' % checks row 1
                win=1;
            elseif t(2,1)=='X' & t(3,1)=='X' % checks column 1
                win=1;
            end
        end
% win conditions containing t(2,2)
        if t(2,2)=='X' 
            if t(1,2)=='X' & t(3,2)=='X' % checks column 2
                win=1;
            elseif t(2,3)=='X' & t(2,1)=='X' % checks row 2
                win=1;
            elseif t(1,1)=='X' & t(3,3)=='X' % checks diagonal
                win=1;
            elseif t(1,3)=='X' & t(3,1)=='X' % checks diagonal
                win=1;
            end
        end
% win conditions containing t(3,3)
        if t(3,3)=='X' 
            if t(3,2)=='X' & t(3,1)=='X' % checks row 3
                win=1;
            elseif t(2,3)=='X' & t(1,3)=='X' % checks column 3
                win=1;
            end
        end
        
    elseif t(x,y) == ' ' & player==2 % mark O only if blank, player 2 move
        t(x,y)= 'O' ;
        player=1;
        turns=turns+1;
        % player 2 win conditions
% win conditions containing t(1,1)
        if t(1,1)=='O' 
            if t(1,2)=='O' & t(1,3)=='O' % checks row 1
                win=2;
            elseif t(2,1)=='O' & t(3,1)=='O' % checks column 1
                win=2;
            end
        end
% win conditions containing t(2,2)
        if t(2,2)=='O' 
            if t(1,2)=='O' & t(3,2)=='O' % checks column 2
                win=2;
            elseif t(2,3)=='O' & t(2,1)=='O' % checks row 2
                win=2;
            elseif t(1,1)=='O' & t(3,3)=='O' % checks diagonal
                win=2;
            elseif t(1,3)=='O' & t(3,1)=='O' % checks diagonal
                win=2;
            end
        end
% win conditions containing t(3,3)
        if t(3,3)=='O' 
            if t(3,2)=='O' & t(3,1)=='O' % checks row 3
                win=2;
            elseif t(2,3)=='O' & t(1,3)=='O' % checks column 3
                win=2;
            end
        end
        
    else % if t(x,y) ~= ' '
        disp('Position already taken')
    end
    
    t
end

if win>0 % win message
    fprintf('Player %.0f Wins\n',win)
elseif win==0 & turns==9 % tie game message
    disp('Tie Game')
end
