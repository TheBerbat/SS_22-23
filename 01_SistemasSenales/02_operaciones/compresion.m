function [xout, nout] = compresion(xin, n0, a)

offset = mod(n0-1,a)+1;

xout = xin(offset:a:end);

nmin = ceil((1-n0)/a);
nmax = nmin + length(xout)-1;
nout = (nmin:nmax); % *a ¿Must be applied?

end