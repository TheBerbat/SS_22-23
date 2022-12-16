clear;
close all;
clc;

Fs = 1000; % Frecuencia de muestreo

h = load('02_FilterDesigner/resp.mat').Num;

[resp,freq]=freqz(h,1,2048,Fs);
[resp_ang,freq_ang]=phasez(h,1, 2048,Fs);

figure;
subplot(2,1,1)
title('FIR Filter')
plot(freq,20*log10(abs(resp)),'LineWidth',1.5)
grid on;
xlabel('Frequency (Hz)')
ylabel('Amplitude (db)')

subplot(2,1,2)
plot(freq_ang,resp_ang,'LineWidth',1.5)
grid on;
xlabel('Frequency (Hz)')
ylabel('Angle (deg)')

% Print
fig = gcf;
fig.PaperUnits = 'centimeters';
fig.Units = 'centimeters';
fig.PaperSize  = [33 21];
fig.PaperPosition = [0 0 33 21];
print(fig,'./figures/signal_generated','-dpdf','-r200'); 

