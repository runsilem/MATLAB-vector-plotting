% Vector Plotting in MATLAB
% Author: Melisnur Çürük
% Description: This script loads vector data and performs various plotting tasks
%              to visualize mass and velocity relationships.

%% Load Data
load datafile  % Assumes 'datafile.mat' contains a variable named 'data'

% Extract columns
sample = data(:,1);     % Sample index or time
density = data(:,2);    % Density values
v1 = data(:,3);         % Velocity vector 1
v2 = data(:,4);         % Velocity vector 2

% Compute mass vectors
mass1 = density .* v1;
mass2 = density .* v2;

%% Task 1: Plot mass1 vs sample
figure
plot(sample, mass1)
xlabel("Sample")
ylabel("Mass 1")
title("Mass1 vs Sample")

%% Task 2: Plot mass2 with red stars
figure
plot(sample, mass2, "r*")
xlabel("Sample")
ylabel("Mass 2")
title("Mass2 vs Sample")

%% Task 3: Overlay mass1 with black squares
hold on
plot(sample, mass1, "ks")
legend("Mass 2", "Mass 1")
hold off

%% Task 5: Plot v1 alone
figure
plot(v1)
xlabel("Index")
ylabel("Velocity v1")
title("Velocity Vector v1")

%% Task 6: Plot v1 with thicker line
figure
plot(v1, 'LineWidth', 3)
xlabel("Index")
ylabel("Velocity v1")
title("Velocity v1 with LineWidth=3")

%% Task 7: Plot sample vs v1 with red circles and line
figure
plot(sample, v1, "ro-", 'LineWidth', 4)
xlabel("Sample")
ylabel("Velocity v1")
title("Sample vs Velocity v1")
