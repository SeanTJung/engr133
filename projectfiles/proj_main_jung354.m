%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
% This main function starts off this text-based adventure game and the user
% should run the program from this function at first. 
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
startgame = 0; %Condition for starting the game
status = 1; %Current game status (1 = user is playing)
choice1 = 0; %User's choice
timeleft = timer('TimerFcn',@(~,~)proj_lost_jung354,'StartDelay',1200); %timer for the game (20 minutes)
%% ____________________
%% CALCULATIONS

%% ____________________
%% OUTPUTS
fprintf("--<strong>Welcome to: ETA</strong>--")
while (startgame ~= 1) %while loop to continuously ask user for correct input
    startgame = input("\n\n--<strong>Enter 1 to begin</strong>--\n");
    pause(1); 
end

if startgame == 1 
    %proj_story1_jung354; %function call for the initial background information
    power = 0; %initilization of the power indicating that it is currently off
    start(timeleft); %start timer of 20 minutes
    
    while (choice1 > 2 || choice1 < 1) %while loop to continuously ask user for valid input
    choice1 = input("Check Map before leaving current room: 1\nLeave current room: 2\n");
    end
        if choice1 == 1 
            map = imshow ('proj_map_jung354.png'); %import PNG file of the map for user
            pause(5); %5 second pause for user to look at the map
            proj_door1_jung354(power,timeleft); %function call for current location
        elseif choice1 == 2  
            proj_door1_jung354(power,timeleft); %function call for current location
        else 
            fprintf("\nNot an option!\n\n"); %error message for invalid input
            pause(1);
            choice1 = 0; %re-assigning value for the while loop
        end
end

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.