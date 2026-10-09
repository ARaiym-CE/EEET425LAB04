%EEET425LAB04 ALI RAIYMKULOV q2

b = [1 1];
a = [1 -0.9 0.81];

figure;
freqz(b, a);

n = 0:200;

x = sin((pi*n)/3) + 5*cos(0.95*pi*n);
y = filter(b, a, x);

figure;
stem(n, y, 'filled')

w = [pi/3, 0.95*pi];
figure;
freqz(b, a);



