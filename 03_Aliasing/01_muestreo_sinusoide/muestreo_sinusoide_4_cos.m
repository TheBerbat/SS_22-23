
epsilon = 1e-6;

% Lambda defines
sinusoide = @(t, f, phi)        cos(2*pi*f*t + phi);
muestreo_f = @(func, t)         struct('x', func(t), 't', t);
muestreo = @(func, t0, tf, Fs)  muestreo_f(func, t0:(1/Fs):tf-epsilon);

% Signal config
tf = 0.1;
fs = 1/0.001;


% Plot results
figure;

% Signal plot
subplot(2,1,1);
title(sprintf('Signal'));
hold on;
xlim([0, tf]);
    
xa = @(t) sinusoide(t,  100, 0) + ...
          sinusoide(t,  200, 0) + ...
          sinusoide(t,  900, 0) + ...
          sinusoide(t, 2200, 0);
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

% Comentario 1
% En este caso solo se aprecia una señal de frecuencia de 200 Hz. Eso es
% debido a que el manchado espectral de la señal de 900Hz (la cual se 
% encuentra por encima de la mitad de la frecuencia de muestreo) anula la
% señal de 100 Hz, por lo dicho en el apartado anterior, señal impar, etc
% (solo lo anula para la señal muestreada muestreo). En cambio la señal de
% 1200 complementa a la señal de 200 Hz y por eso sale modulo 2.

% Comentario 2
% Pasa exactamente igual, al no estar en la zona de 500:1000 al quitar un
% multiplo entero de la frecuencia de muestreo no es reflejada y no se
% anula con la señal de 200 Hz, en cambio para la señal de 100 Hz si es
% anulada por la de 900 Hz.

% Comentario 3
% Usando cosenos. Al ser una función par en la zona que refleja no se
% anularían las frecuencias y se complementarían todas.
