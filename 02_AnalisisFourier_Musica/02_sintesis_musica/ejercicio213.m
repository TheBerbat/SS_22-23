%% Check functionality of nota and escala functions

fprintf('Play nota(47, 1.5, 8000)\n'); pause
sound(nota(47, 1.5, 8000), 8000);

fprintf('Play nota(69, 0.5, 8000)\n'); pause
sound(nota(69, 0.5, 8000), 8000);

fprintf('Play nota(37, 2, 16000)\n'); pause
sound(nota(37, 2, 16000), 16000);

fprintf('Play escala(3, 0.4, 8000), 8000)\n'); pause
sound(escala(3, 0.4, 8000), 8000);

fprintf('Play escala(4, 1.6, 16000), 16000)\n'); pause
sound(escala(4, 0.6, 16000), 19000);

fprintf('Play escala(3, 0.4, 8000), 8000)\n'); pause
sound(escala(8, 0.5, 11025), 11025);
% Matlab read vector and the ADC (Analog Digital Converter)
% only update voltage of speaker in 11025 Hz and the highest
% frequency in that returns escala with these parameters
% is higher that 11025/2 and produces aliasing.