function [u, n] = escalon(ni, nf, n0, A)

n = ni:nf;
u = A*(n>=n0);

end