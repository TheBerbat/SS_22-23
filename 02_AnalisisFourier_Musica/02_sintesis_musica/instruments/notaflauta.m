function tono = notaflauta(A, tecla, dur, fs)

f = 440 * (2^((tecla-49)/12));
t = 0:1/fs:dur;vib = 5;
tono = ...
    A * sqrt(2)*sin(pi*t/dur) ...
    .*(sin(2*pi*t*vib)+2)/3 ...
    .*(0.96*sin(2*pi*f*t) ...
    +0.075*(sin(2*pi*f*0.75*t) ...
    +sin(2*pi*f*1.5*t) ...
    +sin(2*pi*f*3*t)) ...
    +0.06*(sin(2*pi*f*2*t) ...
    +sin(2*pi*f*2*t/2) ...
    +sin(2*pi*f*2*t/4) ...
    ));

end