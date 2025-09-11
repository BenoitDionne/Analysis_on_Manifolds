% question30.png

close all

ax = gca;

u = 0:0.01:6*pi;
x1 = 5*(u + sin(u));
x2 = 5*(1-cos(u));
plot(ax,x1,x2,'-b')
hold on
grid on
ax.Box = 'off';
xlabel('x')
ylabel('y')
title('cycloid with a=5')
