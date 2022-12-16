clear;
close all;
clc;

N = 110; % Orden del filtro
Fs = 1000; % Frecuencia de muestreo

f_c = 100; w_c = f_c/Fs*(2*pi); % Frecuencia de corte

delta_p = 0.01;
delta_s = 0.001;

n = 0:N;
n_alpha=-N/2:N/2;

h_d = w_c./pi* sinc(n_alpha*w_c/pi);
w_n = my_blackman(N);
h = h_d.*w_n;

[resp,freq]=freqz(h,1,2048,Fs);
[resp_ang,freq_ang]=phasez(h,1, 2048,Fs);

figure;
subplot(2,1,1)
title('FIR Filter')
plot(freq,abs(resp),'LineWidth',1.5)
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

