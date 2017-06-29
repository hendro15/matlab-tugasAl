fs = 20000;
t = 0:1/fs:1;
y = square(pi*20*t);
plot(t,y), axis([0 1 -1 1]);