function [xref,nout] = reflexion(xin, n0)

nmin = 1-n0;
nmax = nmin + length(xin) -1;
nout = nmin:nmax;

tam = length(xin);
xref = zeros(1,tam);
if n0 < 1 || n0 > tam
    return
end

i = 1;
xref(n0) = xin(n0);
while (true)
    from = n0 + i;
    to = n0 - i;
    i = i+1;
    
    if (1<=from && from<=tam && 1<=to && to<=tam)
        xref(from) = xin(to);
        xref(to) = xin(from);
    elseif 1<=from && from<=tam
        xin(from) = 0;
    else
        xin(to) = 0;
    end
    
    if from>=tam || to<=1
        break;
    end
end
end