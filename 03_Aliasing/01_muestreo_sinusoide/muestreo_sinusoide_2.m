
epsilon = 1e-6;

% Lambda defines
sinusoide = @(t, f, phi)        sin(2*pi*f*t + phi);
muestreo_f = @(func, t)         struct('x', func(t), 't', t);
muestreo = @(func, t0, tf, Fs)  muestreo_f(func, t0:(1/Fs):tf-epsilon);

% Signal config
tf = 0.1;
freq = 100;
fs = 1/0.001;


% Plot results
figure;

% Signal plot
subplot(2,1,1);
title(sprintf('%d Hz signal', freq));
hold on;
xlim([0, tf]);
    
xa = @(t) sinusoide(t, freq, 0);
fplot(xa,[0,tf]);
xa_m = muestreo(xa, 0, tf, fs);
stem(xa_m.t, xa_m.x);

xlabel('Time (s)');
ylabel('Signal');
legend('Real signal', 'Sample signal')

% Freq. plot
[H, freq] = mi_freqresp(xa_m.x, fs);
subplot(2,1,2);
stem(freq, abs(H));

xlabel('Frequency (Hz)');
ylabel('Magnitude');

% Comentarios
% Como era de esperar, la DTFT solo tiene una respuesta a una frecuencia
% que es a 100 Hz, y al estar por debajo de mitad la frecuencia de
% muestreo, no hay ningún problema de manchado espectral y al coincidir con
% un valor exacto de resolución solo aparece en un único punto.
