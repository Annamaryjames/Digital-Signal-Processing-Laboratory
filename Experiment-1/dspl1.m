%% EXPERIMENT NO-1

% Simulation of basic test signals

clc;
clear all;
close all;

%unit impulse
t=-5:1:5;
y1=[zeros(1,5),ones(1,1),zeros(1,5)];
subplot(3,3,1);
stem(t,y1);
title('unit impulse');
xlabel('time index');
ylabel('amplitude');

%unit step
y2=[zeros(1,5),ones(1,6)];
subplot(3,3,2);
stem(t,y2);
title('unit step');
xlabel('time index');
ylabel('amplitude');

%ramp
t3=0:1:10;
y3=[t3];
subplot(3,3,3);
stem(t3,y3);
hold on;
plot(t3,y3);
title('ramp');
xlabel('time index');
ylabel('amplitude');
legend("discrete","continuous");

%sine wave
t4=0:0.01:1;
f4=4;
subplot(3,3,4);
stem(t4,sin(2*pi*f4*t4));
hold on;
plot(t4,sin(2*pi*f4*t4));
title('sine wave');
xlabel('time index');
ylabel('amplitude');
legend("discrete","continuous");

%cosine wave
subplot(3,3,5);
stem(t4,cos(2*pi*f4*t4));
hold on;
plot(t4,cos(2*pi*f4*t4));
title('cosine wave');
xlabel('time index');
ylabel('amplitude');
legend("discrete","continuous");

%squarewave-bipolar
t6=0:0.0001:1;
f6=10;
subplot(3,3,6);
plot(t6,square(2*pi*f6*t6));
title('squarewave-bipolar');
xlabel('time index');
ylabel('amplitude');

%squarewave-unipolar
subplot(3,3,7);
plot(t6,sqrt(square(2*pi*f6*t6)));
title('squarewave-unipolar');
xlabel('time index');
ylabel('amplitude');

%triangular wave
t8=0:0.25:10;
f8=5;
subplot(3,3,8);
stem(t8,sawtooth(2*pi*f8*t8,0.5));
hold on;
plot(t8,sawtooth(2*pi*f8*t8,0.5));
title('triangular wave');
xlabel('time index');
ylabel('amplitude');
legend("discrete","continuous");

%exponential signal
t9=0:0.01:100;
y9=exp(t9);
subplot(3,3,9);
stem(t9,y9);
hold on;
plot(t9,y9);
title('exponential signal');
xlabel('time index');
ylabel('amplitude');
legend("discrete","continuous");
