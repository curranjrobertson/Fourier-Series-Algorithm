% Curran Robertson
% Fourier Series Expansion

clear all;clc; close all

x = @(t) cos(10*t); % function (change)
w = 10; % omega (change)
a0 = (w/pi)*integral(x, 0, 2*pi/w); % first coefficient
xf = a0/2; % first value 

N = 100; % iterations (change)
i = 1; % init loop
while i < N
    syms t
    ai = (w/pi)*int(x.*cos(i*w*t), [0, 2*pi/w]);
    bi = (w/pi)*integral(@(t) x(t).*sin(i*w*t), 0, 2*pi/w);
    xf = xf + ai*cos(i*w*t)+bi*sin(i*w*t);
    i = i+1;
    
end

pretty(xf)

fplot(xf)
figure
fplot(x, 'r')
