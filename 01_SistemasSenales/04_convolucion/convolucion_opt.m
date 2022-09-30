function [cn] = convolucion_opt(x, h, n0, n1)

cn = zeros(1, n1-n0+1);

len_x = length(x);
len_h = length(h);

for i=1:length(cn)
    min_j = max(n0+i-len_h,1);
    max_j = min(i+n0-1, len_x);
    cn(i) = sum(x(min_j:max_j).*h(i+n0-(min_j:max_j)));
end

end