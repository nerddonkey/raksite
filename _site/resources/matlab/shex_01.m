function []=shex_01()
    set(gcf,'PaperUnits','inches','PaperPosition',[0 0 10 5]) %150dpi
    colormap('copper')
    subplot(1,2,1)
    plonk(0,0,0)
    subplot(1,2,2)
    plonk(270,45,0)
    saveas(gcf, 'figures/shex_01', 'png')
    shg
end

function []=plonk(alpha,beta,gamma)
    [x,y,z,f,name]= generate_spherical_harmonic(8,7,0, ...
        0,180, 0,360, 1.25, 0.5, alpha,beta,gamma, 48, 96);
    s=surf(x,y,z,f);
    set(s,'LineWidth',0.1)
    light               % add a light
    lighting gouraud    % preferred lighting for a curved surface
    lightangle(260,-45) % second fill-in light
    maxa=1.8;
    axis([-maxa maxa -maxa maxa -maxa maxa])
    axis off
    %set(s, 'edgecolor', 'none');
    camzoom(2.0)
end