%% Weyl-Heisenberg Bases Toolbox
% Script "plotgauss.m"
%% Description:
% Implements a discretization of a truncated Gaussian function and plots 2d graph.
%
%% Input
N     = input('Number of samples = ');
sigma = input('Standard deviation = ');

%% Discretization
g0 = discret(sigma, N);

%% Plotting
set(0,'DefaultAxesFontSize',11,'DefaultAxesFontName','Times New Roman');
figure(1)
plot(g0, 'k','linewidth',2.5);
grid on;
title('Truncated Gaussian function');
ylabel('Amplitude');
xlabel('Samples, n');