%% Clear workspace
clear;
close all;
clc;

%% Design parameters
f_p = 65;        w_p = 2*pi*f_p;
f_s = 135;       w_s = 2*pi*f_s;
delta_p = 0.1;   delta_p_db = 20*log10(1-delta_p);
delta_s = 0.01;  delta_s_db = 20*log10(delta_s);

%% Compute filter
% Butterworth filter continuous
[N, w_c] = buttord(w_p, w_s, delta_p_db, delta_s_db, 's');
[Hs_n, Hs_d] = butter(N, w_c, 's');
Hs = tf(Hs_n,Hs_d);

% Dicretize filter, tustin method
Fs = 1e3; Ts = 1/Fs;
Hz = c2d(Hs, Ts, 'tustin');

% Low pass to band pass filter
[Gz_n, Gz_d] = iirlp2bp(Hz.Num{1}, Hz.Den{1}, f_p*2/Fs, [20, 80]*2/Fs);
Gz = tf(Gz_n, Gz_d, Ts);

% Compute frequency response
w_test = 2*pi*(1:0.01:500);

[resp_cont, resp_cont_ang] = bode(Hs, w_test);
resp_cont = squeeze(resp_cont); resp_cont_ang = squeeze(resp_cont_ang);
[resp_disc_lp, resp_disc_lp_ang] = bode(Hz, w_test);
resp_disc_lp = squeeze(resp_disc_lp); resp_disc_lp_ang = squeeze(resp_disc_lp_ang);
[resp_disc_bp, resp_disc_bp_ang] = bode(Gz, w_test);
resp_disc_bp = squeeze(resp_disc_bp); resp_disc_bp_ang = squeeze(resp_disc_bp_ang);

%% Print
figure;
title('IIR Filter')
subplot(2,1,1)
title('FIR Filter')
semilogx(w_test/(2*pi),20*log10(abs(resp_cont)),'LineWidth',1.5)
hold on;
semilogx(w_test/(2*pi),20*log10(abs(resp_disc_lp)),'LineWidth',1.5)
semilogx(w_test/(2*pi),20*log10(abs(resp_disc_bp)),'LineWidth',1.5)
legend('Continuous', 'Discrete', 'Band-pass')
grid on;
xlabel('Frequency (Hz)')
ylabel('Amplitude (db)')
ylim([-200, 20])

subplot(2,1,2)
semilogx(w_test/(2*pi),resp_cont_ang,'LineWidth',1.5)
hold on;
semilogx(w_test/(2*pi),resp_disc_lp_ang,'LineWidth',1.5)
semilogx(w_test/(2*pi),resp_disc_bp_ang,'LineWidth',1.5)
legend('Continuous', 'Discrete', 'Band-pass')
grid on;
xlabel('Frequency (Hz)')
ylabel('Angle (deg)')

%% Print to pdf
fig = gcf;
fig.PaperUnits = 'centimeters';
fig.Units = 'centimeters';
fig.PaperSize  = [33 21];
fig.PaperPosition = [0 0 33 21];
print(fig,'./figures/freq_resps','-dpdf','-r200');