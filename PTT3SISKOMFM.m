clear all; clc

%% ID
% Name : Keinda Dwi Adilia (www.github.com/Keinda)
% Institution : Institut Teknologi Bandung
% CODE NAME : FM MODULATION
% FILE NAME : PTT3SISKOMFM.m

%% To change frequency, change the value of X
%% Sine wave sampling
Fs = 8000;                   % samples per second
dt = 1/Fs;                   % seconds per sample
StopTime = 0.25;             % seconds
t = (0:dt:StopTime-dt)';     % seconds
%% Modulation Signal
    X = 10;
    m = sin(2*pi*X*t);
    % Plot the signal vs time:
    figure;
    plot(t,m);
    xlabel('time (in seconds)');
    title('Sinyal Modulasi');
    zoom xon;
%% Carrier Signal
    Xc = X*10
    c = sin(2*pi*Xc*t);
    % Plot the signal vs time:
    figure;
    plot(t,c);
    xlabel('time (in seconds)');
    title('Sinyal Pembawa');
    zoom xon;
%% FM Signal
    %Integrating Modulating Signal
    m1 = -1/(2*pi*X)*cos(2*pi*X*t);
    %Signal Wave
    Kf = 5*X;
    s = cos(2*pi*Xc*t + 2*pi*Kf*m1);
    % Plot the signal vs time:
    figure;
    plot(t,s);
    xlabel('time (in seconds)');
    title('Sinyal FM');
    zoom xon;