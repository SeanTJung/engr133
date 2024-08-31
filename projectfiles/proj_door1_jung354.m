function door1(power,timeleft)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
% This user defined function is for the first door, also known as the
% storage and archive room. It includes some dialogue and a key information
% required for task 2. 
%
% Function Call
% proj_main_jung354
% proj_door2_jung354
% proj_door6_jung354
%
% Input Arguments
% power - variable that indicates if the power is on or off. 
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
door1cond = 0; %count for how many times the user searches the current room
decision3 = 0; %user's third possible decision
%% ____________________
%% CALCULATIONS

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
while (decision == 0) 
    clc; %clearing command window everytime user ends up infront of a door
    fprintf("<strong>Door 1: Storage & Archives</strong>\n"); 
    pause(0.5);
    fprintf("<strong>This seems to be the storage and archive room...\n\n</strong>");
    decision = input("Enter: 1\nMove clockwise: 2\nMove anti-clockwise: 3\n"); %asking for user's first decision
 
if decision == 1 %entering the current room
    pause(2);
    fprintf("\n<strong>I think there is nothing useful here</strong>\n");
    pause(2);
    clc;
        if door1cond >= 2 %condition for searching the room 
            pause(0.5);
            fprintf(".");
            pause(0.5);
            fprintf(".");
            pause(0.5);
            fprintf(".");
            pause(2);
            fprintf("\n\n<strong>Me</strong>: I swear I searched this room 3 times already\n\n");
            pause(0.5);
            fprintf(".");
            pause(0.5);
            fprintf(".");
            pause(0.5);
            fprintf(".");
            pause(1);
            fprintf("\n\n<strong>You found an old archive book with the ship's passwords</strong>\n");
            pause(1);
                while(decision2 ~= 1);
                    decision2 = input("\nTo open the archive press 1: ");
                    if decision2 == 1
                        passwords = csvread("proj_archivefolder_jung354.csv",1,0); %reads a CSV file for the information about passwords
                        display(passwords); %display passwords for user on command window
                        while (decision3 ~= 1)
                            decision3 = input("\nFinished looking at folder: 1\n");
                            if decision3 == 1
                                pause(1);
                            else 
                                decision3 = 0;
                            end
                        end
                    else 
                        pause(0.5); 
                        fprintf("\nNot an option\n\n"); %error message for an invalid input value for decision.
                        pause(1);
                        decision2 = 0; %re-assigning second decision for the nested while loop
                    end
                end
        end
    door1cond = door1cond + 1; %update number of times the user searches the room
    decision = 0; %re-assigning first decision for the while loop 
    decision2 = 0; %re-assigning second decision for the nested while loop
    
elseif decision == 2 %Condition for user's decision of moving clockwise
    pause(3); %time delay
    clc; %clearing the command window
    proj_door6_jung354(power,timeleft); %function call for the door/room clockwise from the current door.
    
elseif decision == 3 %Condition for user's decision of moving anti-clockwise
    pause(3);
    clc;
    proj_door2_jung354(power,timeleft); %function call for the door/room anti-clockwise from the current door.
    
else 
    pause(0.5); 
    fprintf("\nNot an option\n\n"); %error message for an invalid input value for decision.
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