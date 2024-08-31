function door3(power,timeleft)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
% This usre defined function is for the third door, also known as the
% electrical room. It includes some dialogue and this is where the user
% will complete their first task. 
%
% Function Call
% proj_door2_jung354
% proj_door4_jung354
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
    fprintf("<strong>Door 3: Electrical</strong>\n");
    pause(0.5);
    fprintf("<strong>This seems to be the electrical room...\n\n</strong>");
    decision = input("Enter: 1\nMove clockwise: 2\nMove anti-clockwise: 3\n");

if decision == 1 %entering the current room 
    pause(2);
    if power == 0 %IF statement to check if the user already turned the power on or not
        fprintf("\n<strong>I think I can turn the power on here!</strong>\n");
        pause(2);
        clc;
        proj_task1_jung354; %function call for the first task
        power = 1; %updating the condition for the power (1 = ON)
        decision = 0; %re-assigning user's first decision for the while loop
    else %condition if the power is already on (if the user already completed task 1)
        pause(1.5);
        fprintf("\n<strong>The power is already on. There is no need to fix anything</strong>\n\n");
        pause(2);
        decision = 0;
    end
       
elseif decision == 2 %Condition for user's decision of moving clockwise
    pause(3); 
    clc;
    proj_door2_jung354(power,timeleft); %function call for the door/room clockwise from the current door
    
elseif decision == 3 %Condition for user's decision of moving anti-clockwise
    pause(3);
    clc;
    proj_door4_jung354(power,timeleft); %function call for the door/room anti-clockwise from the current door

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