clear;
close all;
clc;

Fs = 1000;

u = load('03_DSC/DSC_5.mat').u;
y = load('03_DSC/DSC_5.mat').y_fund;
f = load('03_DSC/DSC_5.mat').y_kaiser;
t = linspace(0, (length(u)-1)/Fs, length(u));

figure;
hold on
%stem(t,u,'LineWidth',1)
stem(t,y,'LineWidth',1)
stem(t,f,'LineWidth',1)
grid on;
xlabel('Time (s)')
ylabel('Amplitude')

ylim([-1.05, 1.05])

% Print
fig = gcf;
fig.PaperUnits = 'centimeters';
fig.Units = 'centimeters';
fig.PaperSize  = [18 11];
fig.PaperPosition = [0 0 18 11];
print(fig,'./figures/signal_generated','-dpdf','-r200'); 