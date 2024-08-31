function radiofreq = task3()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
% This function represents the final task (task 3). It is called from the
% function: proj_door6_jung354 because this task is meant to be completed
% in the final location, door 6 (the communication room). This task
% requires the user to input the correct radio frequency value in order to
% report the evil NPC, Jack who was introduced in the beginning of the
% game. 
%
% Function Call
% proj_door6_jung354
%
% Input Arguments
% N/A
%
% Output Arguments
% radiofreq - radio frequency value that the user will input
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
pause(2);
fprintf("<strong>\n\nThe communication system is ON</strong>\n\n");

while (decision == 0)
    decision = input("Report: 1\nLeave: 2\n");
    radiofreq = 0;
    if decision == 1
        while (radiofreq == 0)
        radiofreq = input("\nInput Radio Frequency (Hz): ");
            if radiofreq == 291 %condition for the correct radio frequency value
                pause(2);
                fprintf("\n\n--<strong>Correct Radio Frequency</strong>--\n\n\n");
                pause(3);
                fprintf("<strong>static noises</strong>\n\n");
                pause(2);
                fprintf("<strong>Me</strong>: Hello? Can you hear me? This is Crewship Number 1 about to arrive!\n");
                pause(2);
                fprintf("<strong>Me</strong>: I need the police waiting for an arrest!\n");
                pause(2.5);
                fprintf("\n<strong>HQ</strong>: What seems to be the problem?");
                pause(2);
            else
                pause(2);
                fprintf("\n\n--<strong>Incorrect Radio Frequency</strong>--\n\n\n");
                decision = 0;
            end
        end
    elseif decision == 2
        radiofreq = 0;
    else
        decision = 0;
        pause(2);
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