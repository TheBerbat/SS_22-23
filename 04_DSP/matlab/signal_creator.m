% Lambda defines
sinusoide = @(t, f, phi)        sin(2*pi*f*t + phi);
muestreo_f = @(func, t)         struct('x', func(t), 't', t);
muestreo = @(func, t0, tf, Fs)  muestreo_f(func, t0:(1/Fs):tf);

% Create signal
xa = @(t) 1    * sinusoide(t, 50, 0)  + ...
          0.5  * sinusoide(t, 150, 0) + ...
          0.3  * sinusoide(t, 250, 0) + ...
          0.25 * sinusoide(t, 350, 0) + ...
          0.15 * sinusoide(t, 450, 0);

% Crop signal to 100 samples
x = muestreo(xa, 0, 100/5000, 5000);
x = x.x(1:end-1);
