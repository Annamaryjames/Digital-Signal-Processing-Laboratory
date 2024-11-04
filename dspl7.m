%%
%linearity
clc;
clear;
close all;
x1=[1 2 3 4];
x2=[2 1 2 1];
a1=2;
a2=3;
x1k=fft(x1);
x2k=fft(x2);
lhs=(a1*x1)+(a2*x2);
lhsk=fft(lhs);
disp('LHS=');
disp(lhsk);
rhsk=(a1*x1k)+(a2*x2k);
disp('RHS=');
disp(rhsk);

%% 



%convolution
clc;
clear;
close all;
x1=[1 2 3 4];
x2=[2 1 2 1];
y1=cconv(x1,x2,4);
lhsk=fft(y1);
x1k=fft(x1);
x2k=fft(x2);
y2=x1k.*x2k;
rhsk=y2;
disp('LHS=');
disp(lhsk);
disp('RHS=');
disp(rhsk);

%% 




%multiplication
clc;
clear;
close all;
x1=[1 2 3 4];
x2=[2 1 2 1];
l=length(x1);
m=length(x2);
N=max(l,m);
y1=x1.*x2;
x1k=fft(x1);
x2k=fft(x2);
rhsk=cconv(x1k,x2k,N)/N;
disp('LHS=');
disp(y1);
disp('RHS=');
disp(ifft(rhsk));

%% 





%parseval's theorem
clc;
clear;
close all;
x=[1 2 3 4];
N=length(x);
e=sum(abs(x).^2);
X=fft(x);
ek=sum(abs(X).^2)/N;
disp('LHS=');
disp(e);
disp('RHS=');
disp(ek);


