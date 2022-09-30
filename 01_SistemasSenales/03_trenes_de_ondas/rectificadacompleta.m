function [xout, nout] = rectificadacompleta(A, w, n)

nout = 0:w*n;
xout = abs(A*sin(pi*nout/w));

end