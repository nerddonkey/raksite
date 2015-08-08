function [] = meshgen

	numt15=8; nump15=8;

	rho_ref=0.0; rho_scale=1.0;
	% ex1 real
	fid = fopen('tex/ex1a-04-03-real.tex','w');
		generate_tikz_stub(fid, 4,3,0, 180,   0, 225,  90, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,0, 180,   0, 225, 360, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	fid = fopen('tex/ex1b-04-03-real.tex','w');
		generate_tikz_stub(fid, 4,3,0, 180,  90,   0,  30, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,0,  90,   0,   0,  30, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,0, 180,  90,  90,  30, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,0,  90,   0,  90,  30, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	% ex1 imag
	fid = fopen('tex/ex1a-04-03-imag.tex','w');
		generate_tikz_stub(fid, 4,3,1, 180,0, 225,  90, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,1, 180,0, 225, 360, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	fid = fopen('tex/ex1b-04-03-imag.tex','w');
		generate_tikz_stub(fid, 4,3,1, 180,  90,  90,  60, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,1,  90,   0,  90,  60, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,1, 180,  90,   0,  60, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,1,  90,   0,   0,  60, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
return;
	rho_ref=1.00; rho_scale=0.25;
	% ex2 real
	fid = fopen('tex/ex2a-04-03-real.tex','w');
		generate_tikz_stub(fid, 4,3,0, 180,0, 225,  90, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,0, 180,0, 225, 360, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	fid = fopen('tex/ex2b-04-03-real.tex','w');
		generate_tikz_stub(fid, 4,3,0, 180,  90,   0,  30, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,0,  90,   0,   0,  30, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,0, 180,  90,  90,  30, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,0,  90,   0,  90,  30, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	% ex2 imag
	fid = fopen('tex/ex2a-04-03-imag.tex','w');
		generate_tikz_stub(fid, 4,3,1, 180,0, 225,  90, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,1, 180,0, 225, 360, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	fid = fopen('tex/ex2b-04-03-imag.tex','w');
		generate_tikz_stub(fid, 4,3,1, 180,0,  90,  60, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,1, 180,0,   0,  60, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);

	rho_ref=1.0; rho_scale=0.0;
	% ex3 real
	fid = fopen('tex/ex3a-04-03-real.tex','w');
		generate_tikz_stub(fid, 4,3,0, 180,0, 225,  90, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,0, 180,0, 225, 360, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	fid = fopen('tex/ex3b-04-03-real.tex','w');
		generate_tikz_stub(fid, 4,3,0, 180,0,   0,  30, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,0, 180,0,  90,  30, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	% ex3 imag
	fid = fopen('tex/ex3a-04-03-imag.tex','w');
		generate_tikz_stub(fid, 4,3,1, 180,0, 225,  90, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,1, 180,0, 225, 360, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	fid = fopen('tex/ex3b-04-03-imag.tex','w');
		generate_tikz_stub(fid, 4,3,1, 180,0,  90,  60, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		generate_tikz_stub(fid, 4,3,1, 180,0,   0,  60, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
 
	numt15=8; nump15=8;
	rho_ref=0.0; rho_scale=1.0;
	% ex4 real
	fid = fopen('tex/ex4a-11-07-real.tex','w');
		 generate_tikz_stub(fid, 11,7,0, 180,0, 225,  90, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		 generate_tikz_stub(fid, 11,7,0, 180,0, 225, 360, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	fid = fopen('tex/ex4b-11-07-real.tex','w');
		 generate_tikz_stub(fid, 11,7,0, 180,0,  90,  45, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		 generate_tikz_stub(fid, 11,7,0, 180,0, 360, 405, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	 % ex4 imag
	fid = fopen('tex/ex4a-11-07-imag.tex','w');
		 generate_tikz_stub(fid, 11,7,1, 180,0, 225,  90, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		 generate_tikz_stub(fid, 11,7,1, 180,0, 225, 360, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	fid = fopen('tex/ex4b-11-07-imag.tex','w');
		 generate_tikz_stub(fid, 11,7,1, 180,0,  90,  45, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		 generate_tikz_stub(fid, 11,7,1, 180,0, 360, 405, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
 
	numt15=8; nump15=8;
	rho_ref=1.00; rho_scale=0.25;
	% ex5 real
	fid = fopen('tex/ex5a-11-07-real.tex','w');
		 generate_tikz_stub(fid, 11,7,0, 180,0, 225,  90, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		 generate_tikz_stub(fid, 11,7,0, 180,0, 225, 360, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	fid = fopen('tex/ex5b-11-07-real.tex','w');
		 generate_tikz_stub(fid, 11,7,0, 180,0,  90,  45, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		 generate_tikz_stub(fid, 11,7,0, 180,0, 360, 405, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	 % ex5 imag
	fid = fopen('tex/ex5a-11-07-imag.tex','w');
		 generate_tikz_stub(fid, 11,7,1, 180,0, 225,  90, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		 generate_tikz_stub(fid, 11,7,1, 180,0, 225, 360, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	fid = fopen('tex/ex5b-11-07-imag.tex','w');
		 generate_tikz_stub(fid, 11,7,1, 180,0,  90,  45, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		 generate_tikz_stub(fid, 11,7,1, 180,0, 360, 405, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);

	rho_ref=1.0; rho_scale=0.0;
	% ex6 real
	fid = fopen('tex/ex6a-11-07-real.tex','w');
		 generate_tikz_stub(fid, 11,7,0, 180,0, 225,  90, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		 generate_tikz_stub(fid, 11,7,0, 180,0, 225, 360, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	fid = fopen('tex/ex6b-11-07-real.tex','w');
		 generate_tikz_stub(fid, 11,7,0, 180,0,  90,  45, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		 generate_tikz_stub(fid, 11,7,0, 180,0, 360, 405, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	 % ex6 imag
	fid = fopen('tex/ex6a-11-07-imag.tex','w');
		 generate_tikz_stub(fid, 11,7,1, 180,0, 225,  90, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		 generate_tikz_stub(fid, 11,7,1, 180,0, 225, 360, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);
	fid = fopen('tex/ex6b-11-07-imag.tex','w');
		 generate_tikz_stub(fid, 11,7,1, 180,0,  90,  45, rho_ref,rho_scale, 0,0,0, numt15, nump15);
		 generate_tikz_stub(fid, 11,7,1, 180,0, 360, 405, rho_ref,rho_scale, 0,0,0, numt15, nump15);
	fclose(fid);

disp('Done... [meshgen]');beep;
end

function [name] = generate_tikz_stub( fid, degree, order, type, theta1, theta2, phi1, phi2, ...
		rho_ref, rho_scale, alpha, beta, gamma, numt15, nump15 )

	numt = ceil(abs((theta1-theta2)/15))*numt15+1;
	nump = ceil(abs((phi1-phi2)/15))*nump15+1;

	[x,y,z,f,name]= generate_spherical_harmonic( degree, order, type, theta1, theta2, phi1, phi2, ...
			rho_ref, rho_scale, alpha, beta, gamma, numt, nump );

	% plot
	clf;pause(0.2);shg;
	surf(x,y,z,f);
	axis equal;
	view([1 1 1]);
	colormap(gray)
	shg;
	pause(0.2)
		view_direction=[1 1 1];
		light_direction=[0 0.5 0.866];

	[tt,pp]=size(x);
	for i = 1:tt-1
		i2=i+1;
		for j = 1:pp-1
			j2=j+1;
			vec1=[x(i,j), y(i,j), z(i,j)];
			vec2=[x(i2,j), y(i2,j), z(i2,j)];
			vec3=[x(i2,j2), y(i2,j2), z(i2,j2)];
			vec4=[x(i,j2), y(i,j2), z(i,j2)];
			normal=cross(vec2-vec1+vec3-vec4,vec3-vec2+vec4-vec1);
			normal=normal/norm(normal);
				visible=dot(view_direction,normal); %visible=-1;
			if ((theta1-theta2)*(phi1-phi2)<0)
				visible=visible*-1;
			end
			if (visible<=0)
					f_ave=(f(i,j)+f(i2,j)+f(i,j2)+f(i2,j2))/4.0;
					ph=dot(light_direction,normal);
					ph=ph^4; %ph=0;
					intensity=max(0.0,min(1.0,((1+f_ave)/2)^2+0.8*ph));
					mdepth=round(100*(1-intensity)); % intensity 1 maps to 0 and intensity 0 maps to 100
					mdepthline=round(min(100,15+1*mdepth));
					fprintf(fid, '\\filldraw [fill=black!%d,draw=black!%d] ', mdepth, mdepthline);
%				f_ave=(f(i,j)+f(i2,j)+f(i,j2)+f(i2,j2))/4.0;
%				ph=0;%ph=max(dot([ 0 1/sqrt(2) 1/sqrt(2)],normal),0.5)-0.5;
%				depth=max(0,round(25*(1-f_ave)-ph));%50
%				depthline=round(min(100,25+2*depth));
%				fprintf(fid, '\\filldraw [fill=black!%d,draw=black!%d] ', depth, depthline);
				fprintf(fid, '(%7.4f,%7.4f,%7.4f)--(%7.4f,%7.4f,%7.4f)--(%7.4f,%7.4f,%7.4f)--(%7.4f,%7.4f,%7.4f)--cycle;\n', ...
					x(i,j), y(i,j), z(i,j), ...
					x(i2,j), y(i2,j), z(i2,j), ...
					x(i2,j2), y(i2,j2), z(i2,j2), ...
					x(i,j2), y(i,j2), z(i,j2) );
			end
		end
	end
end

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

function [ R ] = RZRYRZdeg( alpha, beta, gamma )
%RZRYRZ Generates the 3x3 matrix corresponding the the Euler angles
%   arguments in deg
	alpha=alpha*pi/180;
	beta=beta*pi/180;
	gamma=gamma*pi/180;
	Rz1=[cos(gamma) -sin(gamma) 0; sin(gamma) cos(gamma) 0; 0 0 1];
	Ry=[cos(beta) 0 sin(beta); 0 1 0; -sin(beta) 0 cos(beta)];
	Rz2=[cos(alpha) -sin(alpha) 0; sin(alpha) cos(alpha) 0; 0 0 1];
	R=Rz2*Ry*Rz1;
end
