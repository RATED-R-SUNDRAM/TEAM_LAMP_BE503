%%Time specifications:
Fs = 20000;                      % samples per second
dt = 1/Fs;                     % seconds per sample
StopTime = 10;                  % seconds
t = (0:dt:StopTime-dt)';

N = size(t,1);

x = data(:,1);

%%Fourier Transform:
a = 20*log10(abs(fft(x)));
b = 20*log10(abs(fft(hp)));
c = 20*log10(abs(fft(lp)));
d = 20*log10(abs(fft(notch)));
e = 20*log10(abs(fft(out1)));
fin = 20*log10(abs(fft(final)));

%%Frequency specifications:
dF = Fs/N;                % hertz
f = 0:dF:Fs-dF;           % hertz

%%Plot the spectrum:
figure;
plot(f,a/N);
xlabel('Frequency (in hertz)');
title('Magnitude Response of Raw EMG');

figure;
plot(f,b/N);
xlabel('Frequency (in hertz)');
title('Magnitude Response');

figure;
plot(f,c/N);
xlabel('Frequency (in hertz)');
title('Magnitude Response');

figure;
plot(f,d/N);
xlabel('Frequency (in hertz)');
title('Magnitude Response');

figure;
plot(f,e/N);
xlabel('Frequency (in hertz)');
title('Magnitude Response');

figure;
plot(f,fin/N);
xlabel('Frequency (in hertz)');
title('Magnitude Response');


