fs = 8000;
tn = 0.90;
volume = 0.35;
%%
sonido_alto = [];
sonido_bajo = [];
sonido_alto = [sonido_alto, nota(56, tn/4, fs)];
sonido_alto = [sonido_alto, nota(55, tn/4, fs)];
%
sonido_bajo = [sonido_bajo, silencio(tn/2, fs)];
%%
sonido_alto = [sonido_alto, nota(56, tn/4, fs)];
sonido_alto = [sonido_alto, nota(55, tn/4, fs)];
sonido_alto = [sonido_alto, nota(56, tn/4, fs)];
sonido_alto = [sonido_alto, nota(51, tn/4, fs)];
sonido_alto = [sonido_alto, nota(54, tn/4, fs)];
sonido_alto = [sonido_alto, nota(52, tn/4, fs)];
%
sonido_bajo = [sonido_bajo, silencio(tn*6/4, fs)];
%%
sonido_alto = [sonido_alto, nota(49, tn/4, fs)];
sonido_alto = [sonido_alto, silencio(tn/2, fs)];
sonido_alto = [sonido_alto, nota(40, tn/4, fs)];
sonido_alto = [sonido_alto, nota(44, tn/4, fs)];
sonido_alto = [sonido_alto, nota(49, tn/4, fs)];
%
sonido_bajo = [sonido_bajo, nota(25, tn/4, fs)];
sonido_bajo = [sonido_bajo, nota(32, tn/4, fs)];
sonido_bajo = [sonido_bajo, nota(37, tn/4, fs)];
sonido_bajo = [sonido_bajo, silencio(tn/4, fs)];
sonido_bajo = [sonido_bajo, silencio(tn/2, fs)];
%%
sonido_alto = [sonido_alto, nota(51, tn/4, fs)];
sonido_alto = [sonido_alto, silencio(tn/2, fs)];
sonido_alto = [sonido_alto, nota(44, tn/4, fs)];
sonido_alto = [sonido_alto, nota(48, tn/4, fs)];
sonido_alto = [sonido_alto, nota(51, tn/4, fs)];
%
sonido_bajo = [sonido_bajo, nota(20, tn/4, fs)];
sonido_bajo = [sonido_bajo, nota(32, tn/4, fs)];
sonido_bajo = [sonido_bajo, nota(36, tn/4, fs)];
sonido_bajo = [sonido_bajo, silencio(tn/4, fs)];
sonido_bajo = [sonido_bajo, silencio(tn/2, fs)];

%%
sonido_alto = [sonido_alto, nota(52, tn/4, fs)];
sonido_alto = [sonido_alto, silencio(tn/2, fs)];
sonido_alto = [sonido_alto, nota(44, tn/4, fs)];
sonido_alto = [sonido_alto, nota(56, tn/4, fs)];
sonido_alto = [sonido_alto, nota(55, tn/4, fs)];
%
sonido_bajo = [sonido_bajo, nota(25, tn/4, fs)];
sonido_bajo = [sonido_bajo, nota(32, tn/4, fs)];
sonido_bajo = [sonido_bajo, nota(37, tn/4, fs)];
sonido_bajo = [sonido_bajo, silencio(tn/4, fs)];
sonido_bajo = [sonido_bajo, silencio(tn/2, fs)];

%% Merge in one vector
sonido_alto_ajuste = [sonido_alto, zeros(1,length(sonido_bajo)-length(sonido_alto))];
sonido_bajo_ajuste = [sonido_bajo, zeros(1,length(sonido_alto)-length(sonido_bajo))];
cancion = sonido_alto_ajuste + sonido_bajo_ajuste;

%% Play sound
sound(volume*cancion, fs);
