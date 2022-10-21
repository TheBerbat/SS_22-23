function sonido = escala(valor, dur, fs)

sonido = [];
start = 12*valor - 8;
for i=start:start+11
    sonido = [sonido, nota(i, dur, fs)];
end

end