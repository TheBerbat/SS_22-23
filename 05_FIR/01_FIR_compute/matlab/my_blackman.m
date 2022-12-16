function w_n = my_blackman(N)

w_n = 0.42 - 0.5*cos(2*pi*(0:N)/N) + 0.08*cos(4*pi*(0:N)/N);

end