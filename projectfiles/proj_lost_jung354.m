function lost()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
% This function is called only when the user loses the game. The user will
% lose the game if they cannot finish all tasks and beat the game within 20
% minutes. The timer object initialized in the main function will call this
% once 20 minutes (1200 seconds) has passed. 
% 
% Function Call
% proj_main_jung354
%
% Input Arguments
% N/A
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
clc; %clearing command window
clear; %clearing all variables 
exit1 = 0; %user's possible decision once the game is lost
%% ____________________
%% CALCULATIONS

%% ____________________
%% OUTPUTS
pause(0.5);
fprintf("\n.");
pause(0.5);
fprintf(".");
pause(0.5);
fprintf(".");
pause(2);
fprintf("\n\n--<strong>GAME OVER</strong>--\n\n");
pause(2);
while (exit1 ~= 1)
    exit1 = input("\nPress 1 to quit MATLAB: "); 
    if exit1 == 1
        exit; %exit MATLAB
    else
        fprintf("\nNot an option. Please restart MATLAB or click <strong>CTRL+C</strong>\n");
    end
end       
end

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.