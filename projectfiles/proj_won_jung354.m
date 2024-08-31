function won(timeleft)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
% This function is called only when the user beats the game by reporting
% the evil NPC, Jack, who was introduced in the beginning of the game
% successfully. It will also allow the user play again or quit the game. 
%
% Function Call
% proj_door6_jung354
%
% Input Arguments
% timeleft - timer object initialized in the main function
%
% Output Arguments
% N/A
%
% Assignment Information
%   Assignment:     Individual Project 
%   Author:         Sean Jung, jung354@purdue.edu
%   Team ID:        LC4-01
%  	Contributor:    
%   My contributor(s) helped me:	
%     [ ] understand the assignment expectations without
%         telling me how they will approach it.
%     [ ] understand different ways to think about a solution
%         without helping me plan my solution.
%     [ ] think through the meaning of a specific error or
%         bug present in my code without looking at my code.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
stop(timeleft); %stop the timer object

clear; %clear variables
clc; %clear command window

playagain = 0; %initialize user's decision to play again or quit

%% ____________________
%% CALCULATIONS

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf("\n.");
pause(0.5);
fprintf(".");
pause(0.5);
fprintf(".");
pause(2);
fprintf("\n\n<strong>Distant Sirens</strong>");
pause(3);
fprintf("\n\n<strong>--GAME COMPLETE--</strong>");
pause(2);
fprintf("\n\n<strong>Thank you for playing!\n</strong>");
pause(2);

while (playagain == 0)
    playagain = input("\nType 1 to play again or 2 to quit: ");
        if playagain == 1
            pause(1);
            proj_main_jung354; %main funciton call to restart the game
        elseif playagain == 2
            pause(1);
            clc;
            clear;
            return; %termination to leave the game
        else
            fprintf("\nNot an option"); %error message for an invalid value
            pause(1);
            playagain = 0;
        end
end
end
%% ____________________
%% COMMAND WINDOW OUTPUT



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.pause(5);