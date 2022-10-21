
%% Configuration
n_periodos = 100;
w = 1;
Ts = 0.1;

%% Calculate signal
rect_completa = rectificadacompleta(1, w/Ts, 2*n_periodos);

%% Perform a DTFT
rf_rect_completa = discreteTFT(a440', pi/1000, 1);
% Fix angle error due to double aproximation.
rf_rect_completa_angle = mod(angle(rf_rect_completa), 2*pi);
for i=1:length(rf_rect_completa_angle)
    if abs(rf_rect_completa(i))<0.1, rf_rect_completa_angle(i) = 0; end
end
% Calculate discrete frecuency
w = 0:pi/(length(rf_rect_completa)-1):pi;

%% Print result
figure()
ax1 = subplot(2,1,1, 'align');
title('Bode Diagram','FontWeight','bold');
stem(w, abs(rf_rect_completa));
ylabel('Magnitude (Abs)');
%stem(20*log10(abs(rf_rect_completa)));

ax2 = subplot(2,1,2, 'align');
stem(w, rf_rect_completa_angle*180/pi);
ylabel('Phase (Deg)');
xlabel('Frequency (rad/s)');

linkaxes([ax1, ax2], 'x');