function door2(power,timeleft)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
% This user defined function is for the second door, also known as the
% guest rooms. It includes some dialogue as well as the choice to talk to a
% guest which is an NPC (non-player character). This function is important
% as it provides a hint for the first task. 
%
% Function Call
% proj_door1_jung354
% proj_door3_jung354
%
% Input Arguments
% power - variable that indicates if the power is on or off. 
% timeleft - timer object initialized in the main function
%
% Output Arguments
% N/A
%
%% Assignment Information
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
%% ____________________
%% CALCULATIONS

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
while (decision == 0) %while loop to continously prompt the user for a valid first decision
    clc; 
    fprintf("<strong>Door 2: Guest Rooms</strong>\n");
    pause(0.5);
    fprintf("<strong>This seems to be the guest rooms...\n\n</strong>");
    decision = input("Enter: 1\nMove clockwise: 2\nMove anti-clockwise: 3\n"); %choices for the user's first decision at this room
    
if decision == 1 %enter current room
    pause(2);
    fprintf("\n<strong>There is a guest standing outside</strong>\n\n");
    decision2 = 0; %initilizing user's second possible decision in this room.
    while (decision2 > 2 || decision2 < 1)
        decision2 = input("Talk to guest: 1\nIgnore Guest: 2\n");
            if decision2 == 1 %If statement to check user's second decision
                if power == 0 %parameter is checked for the current condition of the power in the game.
                    pause(1); %dialogue if the power is still off (task 1 incomplete)
                    fprintf("\n<strong>Me</strong>: Hi. Is everything alright?\n");
                    pause(2);
                    fprintf("\n<strong>Guest</strong>: Alright? My TV turned off! What's happening?\n");
                    pause(3);
                    fprintf("\n<strong>Me</strong>: The power went out. I'm going to go fix it now.\n");
                    pause(3);
                    fprintf("\n<strong>Guest</strong>: Thank goodness. I think I saw someone turn it off!\n");
                    pause(2.5);
                    fprintf("\n<strong>Guest</strong>: He turned off box <strong>9, 10, 11 or 12</strong>.\n");
                    pause(3);
                    fprintf("\n<strong>Me</strong>: What? Okay.\n");
                    pause(2);
                    fprintf("\n<strong>Guest</strong>:...\n");
                    pause(2);
                    clc;
                    decision2 = 0;
                elseif power == 1 %dialogue if the power is on (task 1 complete)
                    pause(1); 
                    fprintf("\n<strong>Me</strong>: Hi. Is everything alright?\n");
                    pause(2);
                    fprintf("\n<strong>Guest</strong>: Yeah. Thank god the power is back!\n");
                    pause(2);
                    clc;
                    decision2 = 0; %re-assigning user's second decision for the nested while loop
                end
            elseif decision2 == 2  
                clc;
                decision = 0; %re-assigning user's first decision for the while loop
            else
                pause(0.5);
                fprintf("\nNot an option\n\n"); %error message for an invalid input value 
                pause(1);
                decision2 = 0;
            end
    end
elseif decision == 2 %Condition for user's decision of moving clockwise
    pause(3); 
    clc;
    proj_door1_jung354(power,timeleft); %function call for the door/room clockwise from the current door
elseif decision == 3 %Condition for user's decision of moving anti-clockwise
    pause(3);
    clc;
    proj_door3_jung354(power,timeleft); %function call for the door/room anti-clockwise from the current door

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