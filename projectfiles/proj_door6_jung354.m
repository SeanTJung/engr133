function door6(power,timeleft)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
% This user defined function is for the sixth door, also known as the
% communication room. It includes some dialogue and this is the function
% where the user will finish their third and last task. 
%
% Function Call
% proj_door5_jung354
% proj_door1_jung354
%
% Input Arguments
% power - variable that indicates if the power is on or off
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
decision = 0; %user's first possible decision
decision2 = 0; %user's second possible decision

%% ____________________
%% CALCULATIONS

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
while (decision == 0)
    clc;
    fprintf("<strong>Door 6: Communication</strong>\n");
    pause(0.5);
    fprintf("<strong>This seems to be the communication room...\n\n</strong>");
    decision = input("Enter: 1\nMove clockwise: 2\nMove anti-clockwise: 3\n");

if decision == 1 %entering the current room
    pause(2);
    if power == 0 %IF statement to check if the user already turned the power on or not
        fprintf("\n<strong>I can't enter. The power is still off</strong>\n");
        pause(2);
        clc;
        decision = 0;
    elseif power == 1 %IF statement for completed task 1 (power is on)
        radiofreq = proj_task3_jung354; %function call for task 3
        if radiofreq == 291 %condition for correct value for task 3
            proj_won_jung354(timeleft); %function call for beating the game
        elseif radiofreq == 0 %condition for an incorrect value for task 3
            decision = 0; %re-assigning user's first decision for while loop
        end
    end
       
elseif decision == 2 %Condition for user's decision of moving clockwise
    pause(3);
    clc;
    proj_door5_jung354(power,timeleft); %function call for the door/room clockwise from the current door
    
elseif decision == 3 %Condition for user's decision of moving anti-clockwise
    pause(3);
    clc;
    proj_door1_jung354(power,timeleft); %function call for the door/room anti-clockwise of the current door

else
    pause(0.5);
    fprintf("\nNot an option\n\n"); %error message for an invalid input value
    pause(1);
    decision = 0; %re-assigning first decision for the first while loop
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