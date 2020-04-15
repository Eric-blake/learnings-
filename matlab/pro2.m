%%From the given data for each variable, the required variables to solve a problem are initialised as below

R = 0.082057;
v1 = 1.25;
v2 = 3.0;
n = 3.0;
T = [800:10:830];
a = 42.003;  %for Aluminium Trichloride
b = 0.2450;  %for Aluminium Trichloride

%%% All the required variables are listed above from the given data

%% Now the Vanderwall's Equation is implemented

work = -a*n^2*(1/v2-1/v1) .+ (-n*R*log((v2-n*b)/(v1-n*b)).*T)

%% I placed the second part of the equation first as when a*n^2*(1/v2-1/v1) is computed would give a constant i.e. a single number as output.
%% Dot before an operator is used for doing elemental operations.

%% Similarly as stated above i have placed all the variables when computed would give a number first in second part of the equation.
%% I finally placed the temperature vector T at last with elemental multiplication operation to make elemental calculations for each value
