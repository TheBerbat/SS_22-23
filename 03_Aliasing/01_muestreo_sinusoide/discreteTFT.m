function X = discreteTFT(x, precision, x0)

if nargin < 2, precision = pi/100; end
if nargin < 3, x0=1; end

w_init=0:precision:pi;

X = zeros(1,length(w_init));
k = -x0+1:1:length(x)-x0;
for i=1:length(w_init)
  X(i) = sum(x.*exp(-1j*w_init(i)*k));
end
end