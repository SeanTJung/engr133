function door4(power,timeleft)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
% This user defined function is for the fourth door, also known as the
% security room. It includes some dialogue and this is where the user will
% accomplish the second task. 
%
% Function Call
% proj_door3_jung354
% proj_door5_jung354
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
    decision2 = 0;
    fprintf("<strong>Door 4: Security</strong>\n");
    pause(0.5);
    fprintf("<strong>This seems to be the security room...\n\n</strong>");
    decision = input("Enter: 1\nMove clockwise: 2\nMove anti-clockwise: 3\n");

if decision == 1 %entering the current room 
    pause(2);
    if power == 0 %condition for incomplete task 1 (power is still off)
        fprintf("\n<strong>I can't enter. The power is still off</strong>\n");
        pause(2);
        clc;
        decision = 0; %re-assigning user's first decision for while loop
    elseif power == 1 %condition for complete task 1 (power is on)
        pause(2);
        fprintf("<strong>\nI need a password to access the security room</strong>\n");
        pause(2);
        while (decision2 > 2 || decision2 < 1)
            decision2 = input("\nEnter password: 1\nLeave: 2\n"); %user's second possible decision
                if decision2 == 1
                    pause(2);
                    password = input("\n\nEnter 6 digit password: ");
                    if password == 583290 %condition for correct password
                        pause(2);
                        fprintf("\n\n--<strong>ACCESS GRANTED</strong>--\n\n");
                        pause(2);
                        task2 = proj_task2_jung354; %function call for task 2
                        decision2 = 0; %re-assigning second decision for nested while loop
                    else
                        pause(2);
                        fprintf("\n\n--<strong>ACCESS DENIED</strong>--\n\n");
                        decision2 = 0; %re-assigning second decision for nested while loop
                    end
                elseif decision2 == 2
                    decision = 0;
                    pause(1);
                else
                    pause(0.5);
                    fprintf("\nNot an option\n\n"); %error message for an invalid input value 
                    pause(1);
                    decision2 = 0;
                end
        end
    end
    
elseif decision == 2 %Condition for user's decision of moving clockwise
    pause(3);
    clc;
    proj_door3_jung354(power,timeleft); %function call for the door/room clockwise from current door
    
elseif decision == 3 %Condition for user's decision of moving anti-clockwise
    pause(3);
    clc;
    proj_door5_jung354(power,timeleft); %function call for the door/room anti-clockwise from the current door

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