fs = 2000; % frekuensi
t = 0:1/fs:4; % periode
x = sin(2*pi*50*t) + sin(2*pi*250*t) + sin(2*pi*750*t); % data sinyal
x1 = x(1:4000);
x2 = x(4001:8001);
b = 1;
a = [1 -0.9];
[y1, zf] = filter(b, a, x1);
y2 = filter(b,a,x2,zf);
plot(t(1:50),x(1:50),t(1:50),y2(1:50),'--',t(1:50),y2(1:50),':'); %menampilkan 50 sinyal pertama