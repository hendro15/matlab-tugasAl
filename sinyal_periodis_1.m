fs = 100000;
t = 0:1/fs:1;
y = 2*sin(2*pi*100*t);
% plot(t,y); % menampilkan semua sinyal
plot(t(1:5000),y(1:5000)); % menampilkan 5000 sinyal pertama