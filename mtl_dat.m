%% Microstrip Transmission Line Design and Analysis Tool (MTL-DAT)
% Author: Paul Czeresko

close all;
clear all;
clc;

%% Define strings
not_valid = 'Not a valid selection.\n';
main_menu = ['[1] Design MTL from Z0 and e_r \n',...
    '[2] Find Z0 from W, d, and e_r \n',...
    '[3] Analyze matrices from Z0, f, and l \n',...
    '[4] Quit (your workspace will be perserved)\n'];
in = '>> ';
%% Begin main loop
fprintf(['Welcome to the Microstrip Transmission Line Design and ',...
    'Analysis Tool.\n']);
while(1)
    fprintf(['\nSelect a tool from the list below by entering the line ',...
        'number into the console and pressing the enter key:\n']);
    fprintf([main_menu, '\n']);

    main_switch = input(in);

    switch main_switch
        case 1
            fprintf('\nEnter the characteristic impedance, Z0 \n');
            Z0 = input(in);
            fprintf('\nEnter the relative dielectric constant, e_r \n');
            e_r = input(in);

            W_d = microstrip_ratio(Z0, e_r);

            fprintf('\nThe ratio W/d is %5.3d, stored in the MATLAB workspace as W_d.\n', W_d);
            fprintf('\nSelect from the options below to continue:\n');
            menu = ['[1] Calculate W from d \n',...
                '[2] Return to main menu \n'];
            fprintf([menu, '\n']);

            user_in = input(in);

            switch user_in
                case 1
                    fprintf('\nEnter the substrate thickness, d \n');
                    d = input(in);
                    W = W_d*d;
                case 2
                otherwise
                    fprintf(not_valid);
            end
        case 2
        case 3
        case 4
            clear('in', 'main_menu', 'main_switch', 'not_valid');
            break;
        otherwise
            fprintf(not_valid);
    end
end