%% 
% EXPERIMENT NO-5
% 
% a)Linear convolution using circular convolution

clc;
clear ;
close all;
x=[1 2 3 4];
h=[1 1 1];
n=length(x)+length(h)-1;
x=[x zeros(1,n-length(x))];
h=[h zeros(1,n-length(h))];
x1=fft(x);
h1=fft(h);
y1=x1.*h1;
y=ifft(y1);
disp("Linear Convolution using Circular Convolution :");
disp(y);
%%
%using builtin function
x=[1 2 3 4];
h=[1 1 1];
y1=conv(x,h);
disp(y1);
%% 
% b)circular convolution using linear convolution

x=[1 2 3 4];
h=[1 1 1];
y=conv(x,h);
conv_len=max(length(x),length(h));
result=[y(1:conv_len)];
new_arr=[y(conv_len+1:length(y)) zeros(1,length(y)-conv_len)];
result=result+new_arr;
disp("Circular convolution using Linear Convolution:")
disp(result);