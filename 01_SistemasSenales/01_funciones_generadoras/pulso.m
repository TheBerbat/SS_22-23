function [p,n] = pulso(ni, nf, n0, n1, A)

n = ni:nf;
p = A*(n>=n0 & n<=n1);

end