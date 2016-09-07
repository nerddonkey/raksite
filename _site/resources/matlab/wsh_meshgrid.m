function [X,Y,Z,F]=wsh_meshgrid( l_max, THETA, PHI, coeff, rho_ref, rho_scale)
%SHARM computes a 3D-mesh for a weighted combination of spherical harmonics
%   l_max - non-negative integer for maximum degree
%		THETA, PHI - meshed theta and phi
%		coeff - weights
%   rho_ref - radius of reference sphere; try 0.0 or 1.0
%   rho_scale - multiplier for normalised (max(abs())=1) spherical harmonic; try 1.25 or 0.25

pass the 2D THETA, PHI mesh
	which should be generated via [THETA, PHI]=meshgrid(theta,phi); in that order (vector theta first)
	the theta and phi vectors need not be uniformly spaced
	if they are uniformly spaced then can use
		theta=linspace(theta1*pi/180,theta2*pi/180,numt);
		phi=linspace(phi1*pi/180,phi2*pi/180,nump);

pass l_max

pass coeff matrix to weight the spherical hamonics

pass rho_ref, rho_scale

returns the 3D X,Y,Z mesh

returns F the evaluated function on the 3D X,Y,Z mesh
	F is the linear combination of spherical harmonics




	% Calculate the bank of Legendre functions (of all orders)
	Ylm=legendre(l, cos(THETA(1,:)) );
	if degree==0
		Ylm=Ylm'; % thanks a lot matlab
	end

	% pull out the associated Legendre function of the desired order
	Ylm=Ylm(order+1,:); % row of the desired order
	yy=kron(ones(size(phi3')),Ylm); % repeat this row ready for multiplying with mesh phi term

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

	% map the SH value to the radial (height) value
	rho_scale=max(rho_scale,0.005); % not too small
	rhoabs=abs(rho_ref+rho_scale*yyhat);

	% Apply spherical coordinate equations
	X=rhoabs.*sin(theta).*cos(phi);
	Y=rhoabs.*sin(theta).*sin(phi);
	Z=rhoabs.*cos(theta);
end;

function [X,Y,Z]=rotate_mesh(X,Y,Z,alpha,beta,gamma)
%   alpha - third rotation in radians about z-axis
%   beta - second rotation in radians about y-axis
%   gamma - first rotation in radians about z-axis
	% rotate the mesh according to zyz Euler rotation
	R=RZRYRZdeg(alpha,beta,gamma);
	Rxyz=R*[X(:) Y(:) Z(:)]'; % vectorize mesh matrices
	% refill mesh matrices from vector answer Rxyz
	X(:)=Rxyz(1,:)';
	Y(:)=Rxyz(2,:)';
	Z(:)=Rxyz(3,:)';
end

% Create the standard uniform grid in both angles
theta3=linspace(theta1*pi/180,theta2*pi/180,numt);
phi3=linspace(phi1*pi/180,phi2*pi/180,nump);
[THETA,PHI]=meshgrid(theta3,phi3);
