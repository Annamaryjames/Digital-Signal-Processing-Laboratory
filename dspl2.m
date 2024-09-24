%% 
% EXPERIMENT NO-2
% 
% Verification of sampling theorem

clc;
clear all;
close all;
%original signal
t=0:0.01:1;
fm=10;
y=sin(2*pi*fm*t);
subplot(2,2,1);
stem(t,y);
hold on;
plot(t,y);
title("Original signal");
xlabel("time");
ylabel("amplitude");
%less than nyquist range
fs1=fm;
t1=0:1/fs1:1;
y1=sin(2*pi*fm*t1);
subplot(2,2,2);
stem(t1,y1);
hold on;
plot(t1,y1);
title("Undersampling");
xlabel("time");
ylabel("amplitude");
%equal to nyquist rate
fs2=3*fm;
t2=0:1/fs2:1;
y2=sin(2*pi*fm*t2);
subplot(2,2,3);
stem(t2,y2);
hold on;
plot(t2,y2);
title("Nyquistsampling");
xlabel("time");
ylabel("amplitude");
%greater than nyquist rate
fs3=10*fm;
t3=0:1/fs3:1;
y3=sin(2*pi*fm*t3);
subplot(2,2,4);
stem(t3,y3);
hold on;
plot(t3,y3);
title("Oversampling");
xlabel("time");
ylabel("amplitude");