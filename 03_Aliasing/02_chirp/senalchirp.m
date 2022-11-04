function [ch,t] = senalchirp(fi,ff,phi,duracion,Ts)

u = (ff-fi)/duracion;

t = 0:Ts:duracion;
ch = cos((2*pi*u*(t.^2)) + (2*pi*fi*t) + phi);

end