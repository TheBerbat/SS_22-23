function [r,n] = rampa(ni, nf, n0, m)

n = ni:nf;
r = m*(n-n0).*(n>=n0);

end