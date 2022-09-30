function [d,n] = impulso(ni, nf, n0, A)

n = ni:nf;
d = A*(n==n0);

end