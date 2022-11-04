function [H, freqs] = mi_freqresp(y, fs)

precision = 2*pi/length(y);

% Without optimization
H     = discreteTFT(y, precision) * 2/length(y);
freqs = (0:precision:pi)*fs/(2*pi);

% Optimization with FFT
%H     = fft(y)*2/length(y); H=H(1:end/2);
%freqs = freqs(1:end-1);

end