function [pos_x,pos_y,pos_z] = get_pos(x,y,intensity,imagesize)

halfsize = imagesize/2;


theta = 90 * (x - halfsize)/halfsize ;

% turn to rad
theta = theta * pi/180;

phi = atan((halfsize-y)/(x-halfsize));

pos_x = sin(theta) * cos(phi) * intensity;
pos_y = sin(theta) * sin(phi) * intensity;
pos_z = cos(theta) * intensity;

x = pos_x;
y=pos_y;
z=pos_z;

end