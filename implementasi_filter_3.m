fs = 2000; % frekuensi
t = 0:1/fs:4; % periode
x = sin(2*pi*50*t) + sin(2*pi*250*t) + sin(2*pi*750*t); % data sinyal
b = ones(1,10)/10;
y = filtfilt(b,1,x); % filter non kausal
yy = filter(b,1,x); % filter kausal
% plot(t,x,t,y,'--',t,yy,'-'); % menampilkan seluruh sinyal
plot(t(1:50),x(1:50),t(1:50),y(1:50),'--',t(1:50),yy(1:50),'-'); % menampilkan 50 sinyal pertama