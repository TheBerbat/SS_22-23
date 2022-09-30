function [sc,n] = senoc(N, p, A)

n_lim = N*p;
n = -n_lim:n_lim;
sc = A*sin(pi/N * n)./(pi*n);
sc(n_lim+1) = A/N; % lim x->0 sin(x)/x = 1

end