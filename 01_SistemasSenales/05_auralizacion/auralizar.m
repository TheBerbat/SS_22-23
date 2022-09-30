[bach,Fs_bach] = audioread('.\05_auralizacion\bach.mp3');
[resp_impulse,Fs_resp_impulse] = audioread('.\05_auralizacion\cathIR.wav');

an = convolucion(bach, resp_impulse);
audiowrite('test.wav',an, Fs_resp_impulse);