function task1()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
% This function represents the first task for the user. It is called from
% the function: proj_door3_jung354 because this task occurs in the
% electrical room (door 3). It is a task where the user must identify the
% correct breaker box that has a problem. 
%
% Function Call
% proj_door3_jung354
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
power = 0; %Power is still currently off
code = 0; %initialization of the sub-task for task 1
trials = 0; %Variable for the number of trials of selecting the correct breaker box
%% ____________________
%% CALCULATIONS

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf("<strong>There are 14 breaker boxes and one of them is off</strong>");
pause(2);
fprintf("\n<strong>You must identify which box and turn the switch back on</strong>");
pause(2);
while (power == 0)
    boxnum = menu('Breaker Box Number', 1,2,3,4,5,6,7,8,9,10,11,12,13,14); %menu function to ouput a menu for the user to click
    if boxnum == 11 %condition to check if the selected breaker box is the correct one
        pause(2)
        while (code ~= 133)
        code = input("<strong>\n\nType the following code to turn on the power: 133\n</strong>"); %simple subtask
            if code == 133
                pause(0.5);
                fprintf("\n.");
                pause(0.5);
                fprintf(".");
                pause(0.5);
                fprintf(".");
                pause(0.5);
                fprintf("\n\n--<strong>POWER ON</strong>--\n\n"); 
                pause(2);
                fprintf("--<strong>Task 1 Complete</strong>--\n\n"); 
                trials = 0; %re-assigning number of trials to avoid errors
                power = 1; %assignment to indicate that the power is ON
                fprintf("<strong>Me</strong>: Thank goodness!");
                fprintf("\n\n<strong>Me</strong>: Now I need figure out the <strong>password</strong> to the security room in order to enter it.");
                pause(2);
                fprintf("\n\n<strong>Me</strong>: Maybe I should check the storage and archive room?\n\n");
                pause(7);
            else %incorrect sub task leads to an error and the user is prompted again
                pause(0.5);
                fprintf(".");
                pause(0.5);
                fprintf(".");
                pause(0.5);
                fprintf(".");
                pause(0.5);
                fprintf("\n\n--<strong>POWER FAILS TO RESTART</strong>--");
            end
        end
    else %condition for breaker boxes that have no problem
        pause(2);
        fprintf("\n\n<strong>This breaker box has no problem</strong>");
        trials = trials + 1; %update count of the number of trials
        
        if trials > 5 
            pause(2);
            fprintf("\n\n<strong>Wait...did the guest say anything about this?</strong>"); %hint for the user if it takes more than 5 tries
        end
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
% is my own original work.