%% Clear environment
close all;
clear;
clc;

%% Config
t0 = 0;
tf = 0.25;
u = 500;
f1 = 10;
phi = -pi/2;

fs = 8000;
fs_real = 100000;

%% Compute
[ch,t] = senalchirp(f1,f1+u*tf,phi,tf-t0,1/fs);
[ch_real,t_real] = senalchirp(f1,f1+u*tf,phi,tf-t0,1/fs_real);

figure;
hold on;
title('Sampling chirp signal')
plot(t_real, ch_real)
stem(t,ch);
xlim([0,0.25]);

xlabel('Time (s)')
ylabel('Signal')
legend('Real signal', 'Sampled signal')


sound(ch*0.8,fs);


