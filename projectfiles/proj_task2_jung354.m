function task2 = task2()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
% This function represents the second task for the user. It is called from
% the function: proj_door4_jung354 because this task occurs in the
% security room (door 4). This task requires the user to search the
% computer and memorize the important data required. 
%
% Function Call
% proj_door4_jung354
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
decision = 0; %user's first possible decision
decision2 = 0; %user's second possible decision
decision3 = 0; %user's third possible decision
task2 = pause(1);
%% ____________________
%% CALCULATIONS

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf("<strong>There is a computer that can be turned on</strong>");
pause(2);
fprintf("\n<strong>Maybe it stores the radio frequency to report Jack</strong>\n\n");
pause(2);
while (decision == 0)
    decision = input("Search computer: 1\nLeave room: 2\n");
    if decision == 1
        pause(0.5);
        fprintf("\n\n.");
        pause(0.5);
        fprintf(".");
        pause(0.5);
        fprintf(".");
        pause(3);
        fprintf("\n\n<strong>Important Data File Found</strong>\n\n");
       
        while (decision2 ~= 1)
            decision2 = input("Open file: 1\n");
            if decision2 == 1
                Frequencies = csvread('proj_radiofile_jung354.csv',1,0);
                display(Frequencies);
                pause(2);
                fprintf("\n<strong>Me</strong>: Now that I know the frequencies I can finally make the report!");
                pause(1);
                    while (decision3 ~= 1)
                        decision3 = input("\n\nFinished looking at file: 1\n");
                            if decision3 == 1
                                pause(1);
                            else 
                                decision3 = 0;
                            end
                    end
                fprintf("\n<strong>Me</strong>: I gotta hurry up because I don't think I have enough time!\n\n");
                decision = 0;
            else
                fprintf("\n\nNot an option\n\n");
                pause(1);
                decision2 = 0;
            end
        end
    elseif decision == 2
        pause(1);
        task2 = pause(1);

    else
        fprintf("\n\nNot an option\n\n"); %error message for an invalid input value
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