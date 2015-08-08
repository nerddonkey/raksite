%[x,y,z,f,name]= generate_spherical_harmonic( degree, order, type, ...
%   theta1,theta2, phi1,phi2, ...
%		rho_ref, rho_scale, ...
%   alpha, beta, gamma, ...
%   numt, nump );

[x,y,z,f,name]= generate_spherical_harmonic(24,8,0, ...
    0,180, 0,360, ...
        1.25, 0.02, ...
    0,30,45, ...
    96, 96);

% plot
clf;
colormap('copper')
s=surf(x,y,z,f);
alpha(s, 0.5)
set(s, 'edgecolor', 'none');
light               % add a light
lighting gouraud    % preferred lighting for a curved surface
axis square off      % set axis equal and remove axis
view(-45,50)        % set viewpoint
lightangle(260,-45) % second fill-in light
camzoom(1.7)         
hold on

[x2,y2,z2,f2,name2]= generate_spherical_harmonic(24,8,0, ...
    40,75, 120,160, ...
        1.25, 0.2, ...
    0,30,45, ...
    96, 96);
ss=surf(x2,y2,z2,f2);
alpha(ss, 1.0)
set(ss, 'edgecolor', 'none');

%axis([0 80000 -1.5 1.5])
%set(gca,'position',[0.15 0.15 0.85 0.85],'units','normalized');
saveas(gcf, 'shsurf', 'png')

shg