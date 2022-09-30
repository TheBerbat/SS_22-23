function [xdil,nout] = dilatacion(xin, n0, a)
nmin = 1-n0;
nmax = (length(xin)-n0);
nout = (nmin:nmax);
xdil = zeros(1,length(nout));

for i = nout
    if (mod(i, a) == 0)
        xdil(i+n0) = xin((i/a)+n0);
    end
end
end