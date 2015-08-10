in_image = imread('154_tank_challenger.jpg');
%imshow(in_image);

v=[1 1]; v=v/norm(v,1);
for n = 1:9
    v=conv(v,v);
end
h=v'*v;

out_image = imfilter(in_image,h);
%imshow(out_image);

new_image = out_image+ 0.75*(in_image-out_image);
imshow(new_image);

shg
