% Example of Stokes' Theorem

close all

fg = figure()
ax = gca;

u = 0:2:2;
x1C1 = 3 + 0.*u;
x2C1 = 0.*u;
x3C1 = 2 - u;

u = 0:0.01:pi/2;
x1C2 = 3*cos(u);
x2C2 = 3*sin(u);
x3C2 = 0.*u;

u = 0:2:2;
x1C3 = 0.*u;
x2C3 = 3 + 0.*u;
x3C3 = u;

u = 0:0.01:pi/2;
x1C4 = 3.*sin(u);
x2C4 = 3.*cos(u);
x3C4 = 2 + 0.*u;

plot3(ax,x1C1,x2C1,x3C1,'-b',x1C2,x2C2,x3C2,'-b',x1C3,x2C3,x3C3, ...
      '-b',x1C4,x2C4,x3C4,'-b');
hold on
grid on
% Does not work with octave:
% ax.Box = 'off';
xlabel("x_1")
ylabel("x_2")
zlabel("x_3")
title("∂ S")

rotate3d on

% print(fg, "stokes_ex", "-dpng");
% print (fg, "stokes_ex", "-dpdflatexstandalone");
% system ("pdflatex stokes_ex");
% open stokes_ex.pdf 

