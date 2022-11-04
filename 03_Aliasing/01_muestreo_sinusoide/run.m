%% Clear and close environment
close all;
clear;
clc;

%% Run secuencial scripts
fprintf("Muestreo de sinusoide analógica de 200Hz, 800Hz y 1200Hz\n")
muestreo_sinusoide_1
pause; close all; clear; clc;
fprintf("Respuesta en frecuencia señal senos 100Hz\n")
muestreo_sinusoide_2
pause; close all; clear; clc;
fprintf("Respuesta en frecuencia señal senos 200Hz + 800Hz + 1200Hz\n")
muestreo_sinusoide_3
pause; close all; clear; clc;
fprintf("Respuesta en frecuencia señal senos 200Hz + 800Hz + 2200Hz\n")
muestreo_sinusoide_4
pause; close all; clear; clc;
fprintf("Respuesta en frecuencia señal cosenos 100Hz\n")
muestreo_sinusoide_2_cos
pause; close all; clear; clc;
fprintf("Respuesta en frecuencia señal cosenos 200Hz + 800Hz + 1200Hz\n")
muestreo_sinusoide_3_cos
pause; close all; clear; clc;
fprintf("Respuesta en frecuencia señal cosenos 200Hz + 800Hz + 2200Hz\n")
muestreo_sinusoide_4_cos