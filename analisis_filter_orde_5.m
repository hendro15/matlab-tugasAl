fs = 2000; % frekuensi
t = 0:1/fs:1; % periode
x = sin(2*pi*50*t) + sin(2*pi*250*t) + sin(2*pi*750*t); % data sinyal
[b2,a] = butter(5,300/1000); % butter orde 5
y = filter(b2,a,x);
figure
impz(y,1,50) % plot 50 sinyal pertama
[H,f] = freqz(b1,a,50,2000); % plot 50 sinyal pertama
figure
plot(f);
title('Fase');
figure
plot(H);
title('Magnitude');
