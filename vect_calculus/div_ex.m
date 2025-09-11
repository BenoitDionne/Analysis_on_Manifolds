% Example of Divergence Theorem

close all

% upper hemisphere of radius 2
u = linspace(0,2*pi,100);
v = linspace(0,pi/2,100);
[U,V] = meshgrid(u,v);
x1 = 2.*cos(U).*sin(V);
x2 = 2.*sin(U).*sin(V);
x3 = 2.*cos(V);

surf(x1,x2,x3,'FaceAlpha',0.2,'FaceColor','b','Edgecolor','b','LineStyle','none');       % ,x1C2,x2C2,x3C2,'-b',x1C3,x2C3,x3C3, ...

hold on
grid on
Box = 'off';
axis equal

% disk of radius 2 at the base of the hemisphere
x3 = 0.*V;

surf(x1,x2,x3,'FaceAlpha',0.2,'FaceColor','b','Edgecolor','b','LineStyle',':');       % ,x1C2,x2C2,x3C2,'-b',x1C3,x2C3,x3C3, ...

xlabel('x_1')
ylabel('x_2')
zlabel('x_3')
title('V')

