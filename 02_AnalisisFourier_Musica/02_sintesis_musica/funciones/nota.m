function tono = nota(tecla, dur, fs)

f_0 = 440 * (2^((tecla-49)/12));

tono = sin(2*pi*f_0*(0:(1/fs):dur));

end