function []=shex_02()
    clf;
    colormap('copper')

    % transparent sphere
    [x,y,z,f,~]=generate_spherical_harmonic(24,8,0, 0,180, 0,360, 1.25,0.0, 0,0,0, 96,192);
    surf(x,y,z,f,'edgecolor','none','facealpha','0.3');

    % setup scene
    light               % add a light
    lightangle(260,-45) % second fill-in light
    lighting gouraud    % preferred lighting for a curved surface
    axis equal off      % set axis equal and remove axis
    view(-75,30)        % set viewpoint
    camzoom(1.7)         
    hold on

    % add a patch
    [x,y,z,f,~]=generate_spherical_harmonic(24,8,0, 20,75, 120,180, 1.25,0.1, 0,0,0, 96,192);
    surf(x,y,z,f,'edgecolor','none');

    % add a patch
    [x,y,z,f,~]=generate_spherical_harmonic(24,8,0, 80,110, 200,240, 1.25,0.1, 0,0,0, 96,192);
    surf(x,y,z,f,'edgecolor','none');

    set(gcf,'PaperUnits','inches','PaperPosition',[0 0 6 6]) %150dpi
    saveas(gcf,'figures/shex_02','png')

    hold off; shg
end