%% Calculate x1 as sinusoidal signal with:
time = 2; % seconds
% a)
A = 100;
w_0 = 2*pi*1100;
phi = 0;
f_s = 8000;

tone_a = A*sin(2*pi*w_0*(0:(1/f_s):time) + phi);

% b)
A = 100;
w_0 = 2*pi*1650;
phi = pi/3;
f_s = 8000;

tone_b = A*sin(2*pi*w_0*(0:(1/f_s):time) + phi);

% Merge sounds with 0.5s silence
tone_sound = [tone_a, zeros(1, round(f_s*0.5)), tone_b];

%% Play sound as 8kHz sample
fprintf('Press enter to hear 8Khz...\n');pause
sound(tone_sound, 8000);

%% Play sound as 16kHz sample
fprintf('Press enter to hear 16Khz...\n');pause
sound(tone_sound, 16000);

