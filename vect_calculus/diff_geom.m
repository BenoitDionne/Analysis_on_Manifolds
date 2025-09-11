% diff_geom01.png

close all

ax = gca;

w = 0:0.01:6*pi;
x1 = w.*cos(w);
x2 = w.*sin(w);
x3 = w;
plot3(ax,x1,x2,x3,'-k')
hold on
grid on
Box = 'off';
xlabel('x_1')
ylabel('x_2')
zlabel('x_3')
title('\sigma(w)')

% diff_geom02.png
figure

ax = gca;

w = 0:0.01:6*pi;
x1 = w.*cos(w);
x2 = w.*sin(w);
x3 = w;
wt = -2:4:2;
x1t = 10*cos(10) + wt.*(cos(10) - 10*sin(10));
x2t = 10*sin(10) + wt.*(sin(10) + 10*cos(10));
x3t = 10 + wt;
plot3(ax,x1,x2,x3,'-k',x1t,x2t,x3t,'-b')
hold on
grid on
Box = 'off';
xlabel('x_1')
ylabel('x_2')
zlabel('x_3')
title('\sigma(w)')

% diff_geom03.png
figure

ax = gca;

w = 0:0.01:6*pi;
x1 = w.*cos(w);
x2 = w.*sin(w);
x3 = w;
wt = -2:4:2;
x1t = 10*cos(10) + wt.*(cos(10) - 10*sin(10));
x2t = 10*sin(10) + wt.*(sin(10) + 10*cos(10));
x3t = 10 + wt;
wk = -0.02:0.04:0.02;
x1k = 10*cos(10) + wk.*(-1000*cos(10) - 100*sin(10) - 30*cos(10) - 4*sin(10));
x2k = 10*sin(10) + wk.*(-1000*sin(10) + 100*cos(10) - 30*sin(10) + 4*cos(10));
x3k = 10 + wk;
plot3(ax,x1,x2,x3,'-k',x1t,x2t,x3t,'-b',x1k,x2k,x3k,'-r')
hold on
grid on
Box = 'off';
xlabel('x_1')
ylabel('x_2')
zlabel('x_3')
title('\sigma(w)')

A = (2*cos(10)-10*sin(10))^2 + (2*sin(10) + 10*cos(10))^2 + (-102)^2; 
k10 = sqrt(A)/(102^(3/2))

% diff_geom04.png
figure

ax = gca;

u = 0:0.01:6*pi;
x1 = w.*cos(w);
x2 = w.*sin(w);
x3 = w;
wt = -2:4:2;
x1t = 10*cos(10) + wt.*(cos(10) - 10*sin(10));
x2t = 10*sin(10) + wt.*(sin(10) + 10*cos(10));
x3t = 10 + wt;
wk = -0.02:0.04:0.02;
x1k = 10*cos(10) + wk.*(-1000*cos(10) - 100*sin(10) - 30*cos(10) - 4*sin(10));
x2k = 10*sin(10) + wk.*(-1000*sin(10) + 100*cos(10) - 30*sin(10) + 4*cos(10));
x3k = 10 + wk;
wb = -0.001:0.002:0.001;
x1b = 10*cos(10) + wb.*(1000*sin(10) - 200*cos(10) +20*sin(10) -4*cos(10));
x2b = 10*sin(10) + wb.*(-1000*cos(10) - 200*sin(10) -20*cos(10) -4*sin(10));
x3b = 10 + 10404*wb;
plot3(ax,x1,x2,x3,'-k',x1t,x2t,x3t,'-b',x1k,x2k,x3k,'-r',x1b,x2b,x3b,'-m')
hold on
grid on
Box = 'off';
xlabel('x_1')
ylabel('x_2')
zlabel('x_3')
title('\sigma(w)')

t10 = 106/A

