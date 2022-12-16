wc = 500*2*pi;
Den = [1 3.8637 7.4641 9.1416 7.4641 3.8637 1] ./ [wc^6 wc^5 wc^4 wc^3 wc^2 wc^1 1]; 
Hs = tf(1,Den);

Fs = 10000;

Hz = c2d (Hs,1/Fs,'tustin');

[resp,freq]=freqz(Hz.Num{1},Hz.Den{1},2048,Fs);
[resp_ang,freq_ang]=phasez(Hz.Num{1},Hz.Den{1}, 2048,Fs);

figure;
subplot(2,1,1)
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
fig.PaperSize  = [13 11];
fig.PaperPosition = [0 0 13 11];
print(fig,'./figures/signal_generated','-dpdf','-r200'); 