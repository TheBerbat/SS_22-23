fs = 1000;

f_p = 75; w_p = f_p/fs*(2*pi); fn_p = f_p/fs;
f_s = 125; w_s = f_s/fs*(2*pi); fn_s = f_s/fs;
delta_p = 0.01;
delta_s = 0.001;

atenuacion = 20*log10(delta_s);
fprintf("La atenuaciación requerida por el filtro: %.4fdB\n", atenuacion);

banda_transicion = fn_s-fn_p;
fprintf("La banda de transición es: %.4f\n", banda_transicion);

N = ceil(5.5 / banda_transicion);
fprintf("La ventana del filtro tipo Blackman será de orden: %d\n", N)

retard = besseli(N, )