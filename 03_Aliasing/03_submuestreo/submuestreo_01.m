%% Clear environment
close all;
clear;
clc

%% Get sound vector
[x, fs] = audioread('./03_aliasing/ArchivoWavPractica3.wav');

% Play original
sound(x, fs);
pause

%% Downsample
x_2n = x(1:2:end);
x_4n = x(1:4:end);

% Play downsampled sounds
sound(x_2n, fs);
pause

sound(x_4n, fs);
pause

sound(x_2n, fs/2);
pause

sound(x_4n, fs/4);
pause

% Calculate freq response
[resp, freq] = mi_freqresp(x',fs);
[resp_2n, freq_2n] = mi_freqresp(x_2n',fs/2);
[resp_4n, freq_4n] = mi_freqresp(x_4n',fs/4);

%% Plot
figure;
subplot(3,1,1)
stairs(freq, abs(resp));
title('Original signal')
xlim([0, fs/2]);
ylim([0,1]*2e-3)
xlabel('Frequency (Hz)')
ylabel('Magnitude')

subplot(3,1,2)
stairs(freq_2n, abs(resp_2n));
title('2x signal')
xlim([0, fs/2]);
ylim([0,1]*2e-3)
xlabel('Frequency (Hz)')
ylabel('Magnitude')

subplot(3,1,3)
stairs(freq_4n, abs(resp_4n));
title('4x signal')
xlim([0, fs/2]);
ylim([0,1]*2e-3)
xlabel('Frequency (Hz)')
ylabel('Magnitude')
