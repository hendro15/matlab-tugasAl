fs = 2000; % frekuensi
t = 0:1/fs:1; % periode
x = sin(2*pi*50*t) + sin(2*pi*250*t) + sin(2*pi*750*t); % data sinyal
[b1,a] = butter(2,300/1000); %butter orde 2, 300/1000 = 0.3 ternormalisasi
y1 = filter(b1,a,x);
[b2,a] = butter(5,300/1000); %butter orde 5
y2 = filter(b2,a,x);
[b3,a] = butter(9,300/1000);%butter orde 9
y3 = filter(b3,a,x);
% plot(t,x,t,y1,'--',t,y2,':',t,y3,'-'); % menampilkan semua sinyal
plot(t(1:50),x(1:50),t(1:50),y1(1:50),'--',t(1:50),y2(1:50),':',t(1:50),y3(1:50),'-'); %menampilkan 50 sinyal pertama