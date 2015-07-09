function foursynth( kmax, T )
    k=[-kmax:kmax]; % Fourier coefficient index span
    omega0=2*pi/T; % fundamental frequency (rad/sec); T - period

    k=k+0.0001; % lazy way to handle sinc at zero
    ak=sin(k*pi/4)./(k*pi).*exp(-j*k*pi/4);
    ck=T*ak.*ak;

    t=T*[-2.5:0.01:2.5]; % time scan for plot (5 periods)
    ekt=exp(j*omega0*kron(k,t')); % k horz; t vert

    yt=ck*ekt.'; % sum the series; .' means non-conjugate transpose

    plot(t,real(yt)); shg
end
