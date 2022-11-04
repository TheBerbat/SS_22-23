
% Lambda defines
sinusoide = @(t, f, phi)        sin(2*pi*f*t + phi);
muestreo_f = @(func, t)         struct('x', func(t), 't', t);
muestreo = @(func, t0, tf, Fs)  muestreo_f(func, t0:(1/Fs):tf);

% Plot results
figure;

freq = [200, 800, 1200];

for i=1:length(freq)
    subplot(3,1,i);
    title(sprintf('%d Hz signal', freq(i)));
    hold on;
    xlim([0, 0.04]);
    
    xa = @(t) sinusoide(t, freq(i), 0);
    fplot(xa,[0,0.04]);
    xa_m = muestreo(xa, 0, 0.04, 1000);
    stem(xa_m.t, xa_m.x);

    xlabel('Time (s)');
    ylabel('Signal');
    legend('Real signal', 'Sample signal')
end

% Answer:
% Cuando se muestrea la señal de 800 Hz a 1 kHz se observa una señal de 
% 200 Hz, desfasada pi radianes, ya que la señal original proviene de una 
% función impar y el manchado espectral inverte la variable independiente. 
% En cambio, la señal a 1200 kHz se localiza en la misma posición en el
% espectro de frecuencias.

