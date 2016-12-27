function brdf_3d_plot

load('diff_mag.txt')


x = diff_mag(:,1);
y = diff_mag(:,2);

ti = diff_mag(:,15);
tip = diff_mag(:,14);

size = 1;
for size = 1:length(x);
    if(x(size)~= x(size+1))
        break;
    end
end
st = length(x)/size
x = reshape(x,size,st);
y = reshape(y,size,st);

ti = reshape(ti,size,st);
tip = reshape(tip,size,st);

    
width = length(x(:,1));
height = length(x(1,:));

imagesize = 512;

for i = 1:width
    for j = 1: height
        [px(i),py(i),pz(i)] = get_pos(x(i,j),y(i,j),tip(i,j),imagesize);
    end
end




end