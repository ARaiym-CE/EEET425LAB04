%EEET425LAB04 ALI RAIYMKULOV q1

k = 0:5;
l = 1:5;
n = 0:100;

b = (1/2).^k; %num coefficients
a = [1, -(1/3).^l]; %den coefficients

x = ones(1, length(n)); %input signal u(n)

y_r = filter(b, a, x); %direct form signal response

figure;
stem(n, y_r, 'filled') %part b

figure;
zplane(b, a); %part c pole zero plot

[bt, at] = tf2sos(b, a) %converts to SOS matrix bt and gain at
y_cascade = at * filter(bt(3,1:3), bt(3,4:6), filter(bt(2,1:3), bt(2,4:6), filter(bt(1,1:3), bt(1,4:6), x))); 

figure;
stem(n, y_cascade, 'filled') %part d and e

figure;
stem(n, y_r - y_cascade, 'filled') %part f