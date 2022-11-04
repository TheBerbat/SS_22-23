%% Clear environment
close all;
clear;
clc;

%% Config
f_1 = 10;   %Hz
u  = 0.5e3; %Hz/seg

%% Compute
se_chirp = @(t) u*t + f_1;

fplot(se_chirp,[0, 4]);
title('Frequency of chirp signal')
xlabel('Time (s)')
ylabel('Frequency (Hz)')
