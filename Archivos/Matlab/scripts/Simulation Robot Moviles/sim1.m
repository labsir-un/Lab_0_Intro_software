x=0; % m
y=0; % m
vx=5; % m/s
ay=3; % m/s
vy=0;
figure(1)
h=0.02 ;%s
for i=1:100
    vy=vy+ay*h;
    x=x+vx*h;
    y=y+vy*h;
    plot(x,y,'*r','LineWidth',3)
    axis equal
    axis([-5 15 -2 15])
    grid
    pause(.05)
end