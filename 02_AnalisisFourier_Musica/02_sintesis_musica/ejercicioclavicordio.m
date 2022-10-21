fs = 8000;
tn = 0.90;
volume = 0.9;

%%
sonido_alto = [];
sonido_bajo = [];
sonido_alto = [sonido_alto, notaclavicordio(volume, 56, tn/4, fs)];
sonido_alto = [sonido_alto, notaclavicordio(volume, 55, tn/4, fs)];
%
sonido_bajo = [sonido_bajo, silencio(tn/2, fs)];
%%
sonido_alto = [sonido_alto, notaclavicordio(volume, 56, tn/4, fs)];
sonido_alto = [sonido_alto, notaclavicordio(volume, 55, tn/4, fs)];
sonido_alto = [sonido_alto, notaclavicordio(volume, 56, tn/4, fs)];
sonido_alto = [sonido_alto, notaclavicordio(volume, 51, tn/4, fs)];
sonido_alto = [sonido_alto, notaclavicordio(volume, 54, tn/4, fs)];
sonido_alto = [sonido_alto, notaclavicordio(volume, 52, tn/4, fs)];
%
sonido_bajo = [sonido_bajo, silencio(tn*6/4, fs)];
%%
sonido_alto = [sonido_alto, notaclavicordio(volume, 49, tn/4, fs)];
sonido_alto = [sonido_alto, silencio(tn/2, fs)];
sonido_alto = [sonido_alto, notaclavicordio(volume, 40, tn/4, fs)];
sonido_alto = [sonido_alto, notaclavicordio(volume, 44, tn/4, fs)];
sonido_alto = [sonido_alto, notaclavicordio(volume, 49, tn/4, fs)];
%
sonido_bajo = [sonido_bajo, notaclavicordio(volume, 25, tn/4, fs)];
sonido_bajo = [sonido_bajo, notaclavicordio(volume, 32, tn/4, fs)];
sonido_bajo = [sonido_bajo, notaclavicordio(volume, 37, tn/4, fs)];
sonido_bajo = [sonido_bajo, silencio(tn/4, fs)];
sonido_bajo = [sonido_bajo, silencio(tn/2, fs)];
%%
sonido_alto = [sonido_alto, notaclavicordio(volume, 51, tn/4, fs)];
sonido_alto = [sonido_alto, silencio(tn/2, fs)];
sonido_alto = [sonido_alto, notaclavicordio(volume, 44, tn/4, fs)];
sonido_alto = [sonido_alto, notaclavicordio(volume, 48, tn/4, fs)];
sonido_alto = [sonido_alto, notaclavicordio(volume, 51, tn/4, fs)];
%
sonido_bajo = [sonido_bajo, notaclavicordio(volume, 20, tn/4, fs)];
sonido_bajo = [sonido_bajo, notaclavicordio(volume, 32, tn/4, fs)];
sonido_bajo = [sonido_bajo, notaclavicordio(volume, 36, tn/4, fs)];
sonido_bajo = [sonido_bajo, silencio(tn/4, fs)];
sonido_bajo = [sonido_bajo, silencio(tn/2, fs)];

%%
sonido_alto = [sonido_alto, notaclavicordio(volume, 52, tn/4, fs)];
sonido_alto = [sonido_alto, silencio(tn/2, fs)];
sonido_alto = [sonido_alto, notaclavicordio(volume, 44, tn/4, fs)];
sonido_alto = [sonido_alto, notaclavicordio(volume, 56, tn/4, fs)];
sonido_alto = [sonido_alto, notaclavicordio(volume, 55, tn/4, fs)];
%
sonido_bajo = [sonido_bajo, notaclavicordio(volume, 25, tn/4, fs)];
sonido_bajo = [sonido_bajo, notaclavicordio(volume, 32, tn/4, fs)];
sonido_bajo = [sonido_bajo, notaclavicordio(volume, 37, tn/4, fs)];
sonido_bajo = [sonido_bajo, silencio(tn/4, fs)];
sonido_bajo = [sonido_bajo, silencio(tn/2, fs)];

sonido_alto_ajuste = [sonido_alto, zeros(1,length(sonido_bajo)-length(sonido_alto))];
sonido_bajo_ajuste = [sonido_bajo, zeros(1,length(sonido_alto)-length(sonido_bajo))];

cancion = sonido_alto_ajuste + sonido_bajo_ajuste;

sound(cancion, fs);
