fs = 2000; % frekuensi
t = 0:1/fs:1; % periode
x = sin(2*pi*50*t) + sin(2*pi*250*t) + sin(2*pi*750*t); % data sinyal
[b1,a] = butter(2,300/1000); %butter orde 2, 300/1000 = 0.3 ternormalisasi
y1 = filter(b1,a,x);
figure
impz(y1,1,50)%plot 50 sinyal pertama
[H,f] = freqz(b1,a,50,2000);
figure
plot(f);
title('Fase');
figure
plot(H);
title('Magnitude');
