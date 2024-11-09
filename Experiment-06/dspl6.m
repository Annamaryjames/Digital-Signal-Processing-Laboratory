%% EXPERIMENT NO-6

%dft

clc;
clear all;
close all;
x=[1 1 0 0];
N=length(x);
X=zeros(4,1);
for k=0:N-1
    for n=0:N-1
        X(k+1)=X(k+1)+x(n+1)*exp(-1i*2*pi*n*k/N);
    end
end
disp('Without using built-in function');
disp(round(X));
disp('Using built-in function');
disp(fft(x));

%idft

X=[2 1-1i 0 1+1i];
N=length(X);
x=zeros(4,1);
for n=0:N-1
    for k=0:N-1
        x(n+1)=x(n+1)+X(k+1)*exp(1i*2*pi*n*k/N);
    end
end
x=x/N;
disp('Without using built-in function');
disp(round(x));
disp('Using built-in function');
disp(ifft(X));

%dft using twiddle factor matrix

x=[1 2 3 4];
N=length(x);
n=0:N-1;
k=n';
W=exp(-1i*2*pi*(k*n)/N);
X=x*W;
disp('Using twiddle factor');
disp(X);
disp('Using built-in function');
disp(fft(x));

%idft using twiddle factor

X=[10  -2 + 2i  -2  -2 - 2i];
N=length(X);
n=0:N-1;
k=n';
W=exp(1i*2*pi*(k*n)/N);
x=X*W/N;
disp('Using twiddle factor');
disp(x);
disp('Using built-in function');
disp(ifft(X));

%magnitude and phase plot of dft

xn=[1 1 1];
N=input('Enter the value of N:');
L=length(xn);
if(N<L)
    error('N must be greater than or equal to L')
end
x=[xn,zeros(1,N-L)];
N=length(x);
Xk=zeros(N,1);
for k=0:N-1
    for n =0:N-1
        Xk(k+1)=Xk(k+1)+x(n+1)*exp(-1i*2*pi*n*k/N);
    end
end
mgXk=abs(Xk);
phaseXk=angle(Xk);
k=0:N-1;
subplot(2,1,1);
stem(k,mgXk);
hold on
plot(k,mgXk);
title('DFT sequence');
xlabel('Frequency');
ylabel('Magnitude');
subplot(2,1,2);
stem(k,phaseXk);
hold on
plot(k,phaseXk);
title('Phase of the DFT sequence');
xlabel('Frequency');
ylabel('Phase');
