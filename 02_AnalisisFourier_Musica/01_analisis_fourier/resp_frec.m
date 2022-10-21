function H = resp_frec(h, precision, h0)

w_init=0:precision:pi;

H = zeros(1,length(w_init));
k = -h0+1:1:length(h)-h0;
for i=1:length(w_init)
  H(i) = sum(h.*exp(-1j*w_init(i)*k));
end
end