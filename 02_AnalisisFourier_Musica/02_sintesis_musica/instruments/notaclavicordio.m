function tono = notaclavicordio(A, tecla, dur, fs)

tono = A*nota(tecla, dur, fs);

t = 0:1/fs:dur;
envolvente = ...
     (sin(2*pi*t*5)+2)/3 ...
     .*(1-exp(-200*t)) ...
     .*exp(- 4*t/(dur));

tono = A*tono.*envolvente;

end