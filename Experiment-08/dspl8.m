%%EXPERIMENT NO-8

%Overlap add and Overlap save method

%overlap add

clc;
close all;
clear;
x = input('Enter the input sequence x : ');
h = input('Enter the impulse response h : ');
L = length(h);
N = length(x);
M = length(h);
x_padded = [x, zeros(1, L - 1)];
y = zeros(1, N + M +1);
num_sections = (N + L - 1) / L;
for n = 0:num_sections-1
    start_idx = n * L + 1;
    end_idx = start_idx + L - 1;
    x_section = x_padded(start_idx:min(end_idx, end));
    conv_result = conv(x_section, h);
    y(start_idx:start_idx + length(conv_result) - 1) =y(start_idx:start_idx + length(conv_result) - 1) + conv_result;
end
y = y(1:N + M - 1);
y_builtin = conv(x, h);
disp('Overlap-add convolution result:');
disp(y);
disp('Built-in convolution result:');
disp(y_builtin);
figure;
subplot(2, 1, 1);
stem(y, 'filled');
title('Overlap-add Convolution Result');
grid on;
subplot(2, 1, 2);
stem(y_builtin, 'filled');
title('Built-in Convolution Result');
grid on;

%overlap save

x = input("Enter the input sequence x : ");
h = input("Enter the impulse response h :");
N = length(h);
y = ovrlsav(x, h, N);
disp("Using Overlap and Save method");
disp(y);
disp("Using built-in function");
disp(conv(x,h));
function y = ovrlsav(x, h, N)
    if (N < length(h))
        error("N must be greater than the length of h");
    end
    Nx = length(x);
    M = length(h);
    M1 = M - 1;
    L = N - M1;
    x = [zeros(1, M1), x, zeros(1, N-1)];
    h = [h, zeros(1, N - M)];
    K = floor((Nx + M1 - 1) / L);
    Y = zeros(K + 1, N);
    for k = 0:K
        xk = x(k*L + 1 : k*L + N);
        Y(k+1, :) = cconv(xk, h, N);
    end
    Y = Y(:, M:N)';
    y = (Y(:))';
end
