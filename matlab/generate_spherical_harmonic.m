function [x,y,z,yyhat,name]= generate_spherical_harmonic( degree, order, type, ...
	theta1, theta2, phi1, phi2, rho_ref, rho_scale, alpha, beta, gamma, numt, nump )
%   degree - non-negative integer
%   order - non-negative integer between 0 and degree (these are real spherical harmonics
%	type - 0 means the cos type or real type, 1 means the sin type or image type
%   theta1/theta2 start/end theta of patch (theta2<theta1 is permitted)
%   phi1/phi2 start/end phi of patch (phi2<phi1 is permitted)
%	rho_ref - radius of reference sphere; try 0.0 or 1.0
%	rho_scale - multiplier for normalised (max(abs())=1) spherical harmonic; try 1.25 or 0.25
%	alpha - third rotation in radians about z-axis
%	beta - second rotation in radians about y-axis
%	gamma - first rotation in radians about z-axis
%   numt - grid size theta
%   nump - grid size phi
%
	% Map degree and order to valid ranges
	degree=abs(degree);
	order=min(abs(order),degree);

	% Create the grid
	theta3=linspace(theta1*pi/180,theta2*pi/180,numt);
	phi3=linspace(phi1*pi/180,phi2*pi/180,nump);
	[theta,phi]=meshgrid(theta3,phi3);
	
	% Calculate the bank of Legendre functions
	%Ylm=legendre(degree,cos(theta(:,1)));
	Ylm=legendre(degree,cos(theta3));
	if degree==0
		Ylm=Ylm'; % thanks a lot matlab
	end
	
	% pull out the associated Legendre function
	Ylm=Ylm(order+1,:); %row
	yy=kron(ones(size(phi3')),Ylm); % repeat row

	% construct the SH
	if type==0 % real part
		yy=yy.*cos(order*phi);
	elseif type==1 % imag part
		yy=yy.*sin(order*phi);
	end

	% normalize SH so that it has values in range [-1,+1]
	yymax=max(max(abs(yy)));
	if yymax==0 % zero function
		yyhat=zeros(size(yy));
	else
		yyhat=yy/yymax;
	end
	% map the SH value to the height value
	rho_scale=max(rho_scale,0.005); % not too small
	rhoabs=abs(rho_ref+rho_scale*yyhat);

	% Apply spherical coordinate equations
	x=rhoabs.*sin(theta).*cos(phi);
	y=rhoabs.*sin(theta).*sin(phi);
	z=rhoabs.*cos(theta);

	% rotate the mesh according to zyz Euler rotation
	R=RZRYRZdeg(alpha,beta,gamma);
	Rxyz=R*[x(:) y(:) z(:)]';
	x(:)=Rxyz(1,:)';
	y(:)=Rxyz(2,:)';
	z(:)=Rxyz(3,:)';

	if type==0
		name=sprintf('%02u-%02u-real',degree, order);
	else
		name=sprintf('%02u-%02u-imag',degree, order);
	end
end
