function [pos_x,pos_y,pos_z] = get_pos_2(x,y,intensity)



% turn to rad
theta = x * pi/180;

phi = y * pi/180;

pos_x = sin(theta) * cos(phi) * intensity;
pos_y = sin(theta) * sin(phi) * intensity;
pos_z = cos(theta) * intensity;

%x = pos_x;
%y = pos_y;
%z = pos_z;

end