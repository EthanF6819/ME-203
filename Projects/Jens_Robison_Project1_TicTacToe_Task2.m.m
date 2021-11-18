% Jens Robison
% ME 203 
% Project 1, Task 2: Simulation
% Tic Tac Toe 

% Format Workspace
clc;clear all; format compact;

N=5000;
i=0;
Player1wins=0;
Player2wins=0;
Ties=0;

while i<N

t=[" " " " " "; " " " " " "; " " " " " "];
player=round(rand(1))+1;
win=0; % win = 1 when a player wins
turns=0;
    while win==0 & turns<9
%         fprintf('Player %.0f \n',player)
        x=randi([1 3]);
        y=randi([1 3]);

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
        end
    end

    if win==1 % win message
        Player1wins=Player1wins+1;
    elseif win==2 % win message
       Player2wins=Player2wins+1;
    elseif win==0 & turns==9 % tie game message
        Ties=Ties+1;
    end
    i=i+1;
    t;
end
Player1wins
Player2wins
Ties




histogram(Player1wins,Player2wins)


