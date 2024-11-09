%% EXPERIMENT NO-9

% Implementation of FIR filter

%lowpass filter

clc;
clear;
close all;
wc=0.5*pi;
N=input("Enter the value of N:");
alpha=(N-1)/2;
eps=0.001;
n=0:1:N-1;
hd=sin(wc*(n-alpha+eps))./(pi*(n-alpha+eps));%eqn forLPF
w=0:0.01:pi;
wr=boxcar(N);%rectangular window
hn=hd.*wr';
h=freqz(hn,1,w);
figure();
subplot(3,2,1);
plot(w/pi,10*log10(abs(h)));
title("Low pass filter using rectangular window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
whm=hamming(N);%hamming window
hn=hd.*whm';
h=freqz(hn,1,w);
subplot(3,2,2);
plot(w/pi,10*log10(abs(h)));
title("Low pass filter using hamming window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
whn=hanning(N);%hanning window
hn=hd.*whn';
h=freqz(hn,1,w);
subplot(3,2,3);
plot(w/pi,10*log10(abs(h)));
title("Low pass filter using hanning window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
wbr=bartlett(N);%bartlett window
hn=hd.*wbr';
h=freqz(hn,1,w);
subplot(3,2,4);
plot(w/pi,10*log10(abs(h)));
title("Low pass filter using bartlett window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
subplot(3,2,5);%plotting rectangular window
stem(wr);
title("Rectangular window sequence");
xlabel("Number of samples");
ylabel("Amplitude");
grid("on");
%%

%highpass filter

clc;
clear;
close all;
wc=0.5*pi;
N=input("Enter the value of N:");
alpha=(N-1)/2;
eps=0.001;
n=0:1:N-1;
hd=((sin(pi*(n-alpha+eps))-sin(wc*(n-alpha+eps)))./(pi*(n-alpha+eps)));%eqn for HPF
w=0:0.01:pi;
wr=boxcar(N);%rectangular window
hn=hd.*wr';
h=freqz(hn,1,w);
subplot(3,2,1);
plot(w/pi,10*log10(abs(h)));
title("High pass filter using rectangular window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
whm=hamming(N);%hamming window
hn=hd.*whm';
h=freqz(hn,1,w);
subplot(3,2,2);
plot(w/pi,10*log10(abs(h)));
title("High pass filter using hamming window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
whn=hanning(N);%hanning window
hn=hd.*whn';
h=freqz(hn,1,w);
subplot(3,2,3);
plot(w/pi,10*log10(abs(h)));
title("High pass filter using hanning window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
wbr=bartlett(N);%bartlett window
hn=hd.*wbr';
h=freqz(hn,1,w);
subplot(3,2,4);
plot(w/pi,10*log10(abs(h)));
title("High pass filter using bartlett window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
subplot(3,2,5);%plotting hamming window
stem(whm);
title("Hamming window sequence");
xlabel("Number of samples");
ylabel("Amplitude");
grid("on");
%%

%band pass filter

clc;
clear;
close all;
wc=0.5*pi;
wc1=0.9*pi;
N=input("Enter the value of N:");
alpha=(N-1)/2;
eps=0.001;
n=0:1:N-1;
hd=(sin(wc1*(n-alpha+eps))-sin(wc*(n-alpha+eps)))./(pi*(n-alpha+eps));%eqn for bandpass
w=0:0.01:pi;
wr=boxcar(N);%rectangular window
hn=hd.*wr';
h=freqz(hn,1,w);
subplot(3,2,1);
plot(w/pi,10*log10(abs(h)));
title("Band pass filter using rectangular window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
whm=hamming(N);%hamming window
hn=hd.*whm';
h=freqz(hn,1,w);
subplot(3,2,2);
plot(w/pi,10*log10(abs(h)));
title("Band pass filter using hamming window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
whn=hanning(N);%hanning window
hn=hd.*whn';
h=freqz(hn,1,w);
subplot(3,2,3);
plot(w/pi,10*log10(abs(h)));
title("Band pass filter using hanning window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
wbr=bartlett(N);%bartlett window
hn=hd.*wbr';
h=freqz(hn,1,w);
subplot(3,2,4);
plot(w/pi,10*log10(abs(h)));
title("Band pass filter using bartlett window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
subplot(3,2,5);%plotting hanning window
stem(whn);
title("Hanning window sequence");
xlabel("Number of samples");
ylabel("Amplitude");
grid("on");
%%

%band stop filter

clc;
clear;
close all;
wc=0.5*pi;
wc1=0.9*pi;
N=input("Enter the value of N:");
alpha=(N-1)/2;
eps=0.001;
n=0:1:N-1;
hd=(sin(wc*(n-alpha+eps))-sin(wc1*(n-alpha+eps))+sin(pi*(n-alpha+eps)))./(pi*(n-alpha+eps));%eqn for BSF
w=0:0.01:pi;
wr=boxcar(N);%rectangular window
hn=hd.*wr';
h=freqz(hn,1,w);
subplot(3,2,1);
plot(w/pi,10*log10(abs(h)));
title("Band stop filter using rectangular window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
whm=hamming(N);%hamming window
hn=hd.*whm';
h=freqz(hn,1,w);
subplot(3,2,2);
plot(w/pi,10*log10(abs(h)));
title("Band stop filter using hamming window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
whn=hanning(N);%hanning window
hn=hd.*whn';
h=freqz(hn,1,w);
subplot(3,2,3);
plot(w/pi,10*log10(abs(h)));
title("Band stop filter using hanning window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
wbr=bartlett(N);%bartlett window
hn=hd.*wbr';
h=freqz(hn,1,w);
subplot(3,2,4);
plot(w/pi,10*log10(abs(h)));
title("Band stop filter using bartlett window");
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
grid("on");
subplot(3,2,5);%plotting bartlett window
stem(wbr);
title("Bartlett window sequence");
xlabel("Humber of samples");
ylabel("Amplitude");
grid("on");
