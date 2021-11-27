data = thi;
time = 0:0.00005:10;
time = time(1:200000);
time = time';
read = data(:,1);


simin = [time,read];

final = out.Final.Data(1:200000);
out1 = out.Out1.Data(1:200000);
notch = out.notch.Data(1:200000);
lp = out.lp.Data(1:200000);
hp = out.hp.Data(1:200000);

%%

x1 = fft(out.Final.Data);
x2 = fft(out.Out1.Data);
x3 = fft(out.notch.Data);
x4 = fft(out.lp.Data);
x5 = fft(out.hp.Data);

figure
plot(time, read);
xlabel("Time (in sec)");
ylabel("Amplitude");
title("Raw EMG signal");

figure
plot(time, hp);
xlabel("Time (in sec)");
ylabel("Amplitude");
title("High Pass filtering at 20Hz");

figure
plot(time, lp);
xlabel("Time (in sec)");
ylabel("Amplitude");
title("Low Pass filtering at 488Hz");

figure
plot(time, notch);
xlabel("Time (in sec)");
ylabel("Amplitude");
title(" Twin T-Notch filtering at 50Hz");

figure
plot(time, out1);
xlabel("Time (in sec)");
ylabel("Amplitude");
title("Double Rectification");

figure
plot(time, final);
xlabel("Time (in sec)");
ylabel("Amplitude");
title("Final Signal");

%%
