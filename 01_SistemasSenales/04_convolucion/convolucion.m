function [cn] = convolucion(x, h, n0, n1)
  cn = zeros(1, n1-n0+1);

  for i=1:length(cn)
    cn(i) = 0;  %n=i+n0-1
    for j=1:i+n0-1, cn(i) = cn(i) + aux(x,j)*aux(h,i+n0-j); end
  end

  function a = aux(x, i)
    if 0<i && i<=length(x), a = x(i); else, a = 0; end
  end
end