% Create signal with components
signal_creator;

% Check if dft works
resp_dft = my_dft(x);

figure;
subplot(2,1,1)
stem(x)
xlabel('Sample')
ylabel('Signal')

subplot(2,1,2)
stem(0:50:5000-1, abs(resp_dft));
xlabel('Frequency (Hz)')
ylabel('Amplitude')

% Print
fig = gcf;
fig.PaperUnits = 'centimeters';
fig.Units = 'centimeters';
fig.PaperSize  = [13 11];
fig.PaperPosition = [0 0 13 11];
print(fig,'./figures/signal_generated','-dpdf','-r200'); 


