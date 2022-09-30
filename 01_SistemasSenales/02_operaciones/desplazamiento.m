function [xout, nout] = desplazamiento(xin, n0, a)

nmin = 1-n0;
nmax = nmin + length(xin) -1;

nout = nmin:nmax;

if abs(a) > length(xin)
    a = length(xin)*sign(a);
end
if a<0
    xout = [xin(1-a:end), zeros(1,-a)];
else
    xout = [zeros(1,a), xin(1:end-a)];
end

end