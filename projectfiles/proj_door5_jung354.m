function door5(power,timeleft)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
% This user defined function is for the fifth door, also known as the
% cafeteria. It includes some dialogue and also includes the second NPC
% (non-player character) of the game. This is the function the player/user
% will gain a hint for the first task. 
%
% Function Call
% proj_door4_jung354
% proj_door6_jung354
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
%% ____________________
%% CALCULATIONS

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
while (decision == 0)
    clc;
    fprintf("<strong>Door 5: Cafeteria & Lounge</strong>\n");
    pause(0.5);
    fprintf("<strong>This seems to be the cafeteria and lounge...\n\n</strong>");
    decision = input("Enter: 1\nMove clockwise: 2\nMove anti-clockwise: 3\n");
    
if decision == 1 %entering the current room
    pause(2);
    fprintf("\n<strong>There is a Chef standing outside</strong>\n\n");
    decision2 = 0; %initializing user's second possible decision
    while (decision2 > 2 || decision2 < 1)
        decision2 = input("Talk to Chef: 1\nIgnore Chef: 2\n");
            if decision2 == 1 %talking to the second NPC
                pause(1);
                fprintf("\n<strong>Me</strong>: Hello. Are you the head Chef?\n");
                pause(2);
                fprintf("\n<strong>Chef</strong>: Yes I am. I am just thinking about what to do with the melted fish from the power cut\n");
                pause(3);
                fprintf("\n<strong>Me</strong>: Sorry about that. Do you happen to know the password to the security room?\n");
                pause(3);
                fprintf("\n<strong>Chef</strong>: I think it was 5..8...\n");
                pause(2.5);
                fprintf("\n<strong>Chef</strong>: I can't remember the rest.\n");
                pause(2);
                fprintf("\n<strong>Me</strong>: Oh alright. Thank you.\n");
                pause(2);
                fprintf("\n<strong>Chef</strong>: I am pretty sure there is a folder in the storage and archive room.\n");
                pause(2);
                fprintf("\n<strong>Me</strong>: I'll have a look. Thanks again.\n");
                pause(2);
                clc;
                decision2 = 0; %re-assigning user's second decision for nested while loop
            elseif decision2 == 2  
                clc;
                decision = 0; %re-assigning user's first decision for nested while loop
            else
                pause(0.5);
                fprintf("\nNot an option\n\n"); %error message for an invalid input value 
                pause(1);
                decision2 = 0;
            end
    end
elseif decision == 2 %Condition for user's decision of moving clockwise
    pause(3);
    clc
    proj_door4_jung354(power,timeleft); %function call for the door/room clockwise from the current door
elseif decision == 3 %Condition for user's decision of moving anti-clockwise
    pause(3);
    clc
    proj_door6_jung354(power,timeleft); %function call for the door/room anti-clockwise from the current door

else
    pause(0.5);
    fprintf("\nNot an option\n\n"); %error message for an invalid input value 
    pause(1);
    decision = 0;
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