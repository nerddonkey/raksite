n=131;
theta = linspace(0,pi,n);%0:pi/80:pi;                   % polar angle
phi = linspace(0,2*pi,n);%0:pi/40:2*pi;                   % azimuth angle

[phi,theta] = meshgrid(phi,theta);    % define the grid

degree = 17
order = 9;
amplitude = 1.5;
radius = 5;

Ymn = legendre(degree,cos(theta(:,1)));
Ymn = Ymn(order+1,:)';
yy = Ymn;

for kk = 2: size(theta,1)
    yy = [yy Ymn];
end

yy = yy.*cos(order*phi);

order = max(max(abs(yy)));
rho = radius + amplitude*yy/order;

r = rho.*sin(theta);    % convert to Cartesian coordinates
x = r.*cos(phi);
y = r.*sin(phi);
z = rho.*cos(theta);

%figure
s = surf(x,y,z,sqrt(x.^2+y.^2+z.^2))
light               % add a light
lighting gouraud    % preferred lighting for a curved surface
axis equal off      % set axis equal and remove axis
view(40,30)         % set viewpoint
camzoom(1.6)        % zoom into scene
set(s, 'edgecolor', 'none');

lightangle(260,-45)
shg
