function [tri,n] = triangular(ni, nf, n0, n1, m)

n = ni:nf;
tri = m*(n-n0).*(n>=n0 & n<=(n0 + (n1-n0)/2)) - m*(n-n1).*(n<=n1 & n>(n0 + (n1-n0)/2));

end