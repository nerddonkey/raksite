function [] = regionsgen
% regionsgen.m

disp(' ')
disp('Running regionsgen.m');
fid = fopen('regionsgen/regions.tex','w');

% 1) keyhole region
theta1=15;
theta2=10;
theta3=35;
phi1=-15;
phi2=15;
phi3=35;
phi4=90;
regionA=[...
	latitudelinedeg( theta1, 360+phi1, phi4 ) ...
	longitudelinedeg( theta1, theta2, phi4 ) ...
	latitudelinedeg( theta2, phi4, phi3 ) ...
	longitudelinedeg( theta2,theta1, phi3 ) ...
	latitudelinedeg( theta1, phi3, phi2 ) ...
	longitudelinedeg( theta1,theta3, phi2 ) ...
	latitudelinedeg( theta3, phi2, phi1 ) ...
	longitudelinedeg( theta3,theta1, phi1 )];
write_region( fid, 'regionA', regionA, 1 );

% 1a) paper keyhole region
theta1=15;
theta2=5;
theta3=30;
phi1=-20;
phi2=20;
phi3=270;
phi4=300;
regionP=[...
	latitudelinedeg( theta1, 360+phi1, phi4 ) ...
	longitudelinedeg( theta1, theta2, phi4 ) ...
	latitudelinedeg( theta2, phi4, phi3 ) ...
	longitudelinedeg( theta2,theta1, phi3 ) ...
	latitudelinedeg( theta1, phi3, phi2 ) ...
	longitudelinedeg( theta1,theta3, phi2 ) ...
	latitudelinedeg( theta3, phi2, phi1 ) ...
	longitudelinedeg( theta3,theta1, phi1 )];
write_region( fid, 'regionP', regionP, 1 );

% 2) polar cap region
write_region( fid, 'regionB', latitudelinedeg( 25, 0, 359 ), 1 );

% 3) triangular region
regionC=[...
	longitudelinedeg( 0, 30, 0 ) ...
	geodesicdeg( 30, 0, 70, 60 ) ...
	longitudelinedeg( 70,0, 60 )];
write_region( fid, 'regionC', regionC, 1 );

% 4) z-axis arrow (this can be rotated to become a x-axis or y-axis arrow)
write_region( fid, 'Arot', latitudelinedeg( 7.5, -155, 155 ), 0 );

% 5) reverse z-axis arrow (can be rotated to become a reverse x-axis or y-axis arrow
write_region( fid, 'Arotrev', latitudelinedeg( 7.5, 155, -155 ), 0 );

% 6) Australian mainland
load coast
main_rr=8296:8603; % 8604 is the same as 8296
main_long=long(main_rr)'*pi/180;
main_lat=(90-lat(main_rr))'*pi/180;
main_coast=[sin(main_lat).*cos(main_long); sin(main_lat).*sin(main_long); cos(main_lat)];
write_region( fid, 'Aust', main_coast, 1 );

% 8) Australia to north pole (Alice Springs)
Ras=RZRYRZdeg( 0, -90+(-24), -134 );
write_region( fid, 'Austpole', Ras*main_coast, 1 );

% 8b) Improper Australia to north pole (Alice Springs)
write_region( fid, 'Austpolerev', [1 0 0;0 -1 0; 0 0 1]*Ras*main_coast, 1 );

% 9) Tasmania
tas_rr=8623:8644; % 8645 is the same as 8623
tas_long=long(tas_rr)'*pi/180;
tas_lat=(90-lat(tas_rr))'*pi/180;
tas_coast=[sin(tas_lat).*cos(tas_long); sin(tas_lat).*sin(tas_long); cos(tas_lat)];
write_region( fid, 'Tas', tas_coast, 1 );

% 10) Tasmania to north pole (Alice Springs)
Ras=RZRYRZdeg( 0, -90+(-24), -134 );
write_region( fid, 'Taspole', Ras*tas_coast, 1 );

% 10b) Improper Tasmania
write_region( fid, 'Taspolerev', [1 0 0;0 -1 0; 0 0 1]*Ras*tas_coast, 1 );

% close the file
fclose(fid);

disp('Done...regions.tex generated');beep;pause(0.5);beep;

end

function write_region(fid, name, data, close)
    fprintf(fid,['\\newcommand{\\' name '}{']);
    fprintf(fid,'(%7.4f,%7.4f,%7.4f) -- ', data(:,1:end-1));
    if (close==0)
       fprintf(fid,'(%7.4f,%7.4f,%7.4f)', data(:,end));
    else
       fprintf(fid,'(%7.4f,%7.4f,%7.4f) -- cycle', data(:,end));
    end
    fprintf(fid,';}\n\n');
end

function [ G ] = latitudelinedeg( theta, phi1, phi2 )
%
	npts=max(10,ceil(abs(phi2-phi1)));
	theta=theta*pi/180;
	phi1=phi1*pi/180;
	phi2=phi2*pi/180;
	phi=linspace(phi1,phi2,npts);
	G=[sin(theta)*cos(phi); sin(theta)*sin(phi); cos(theta)*ones(size(phi))];
%
end

function [ G ] = longitudelinedeg( theta1, theta2, phi )
%
	npts=max(10,ceil(abs(theta2-theta1)));
	theta1=theta1*pi/180;
	theta2=theta2*pi/180;
	phi=phi*pi/180;
	theta=linspace(theta1,theta2,npts);
	G=[sin(theta)*cos(phi); sin(theta)*sin(phi); cos(theta)];
%
end

function [ G ] = geodesicdeg( theta1, phi1, theta2, phi2 )
%
	npts=max(10,ceil(abs(theta2-theta1)));
	npts=max(npts,ceil(abs(phi2-phi1)));
	theta1=theta1*pi/180;
	phi1=phi1*pi/180;
	theta2=theta2*pi/180;
	phi2=phi2*pi/180;
%	The line between (theta1, phi1) and (theta2, phi2) is on the plane containing the geodesic
%	so we just need to expand.  The points are not equally spaced but is usually good enough.
	v1=[sin(theta1)*cos(phi1) sin(theta1)*sin(phi1) cos(theta1)]';
	v2=[sin(theta2)*cos(phi2) sin(theta2)*sin(phi2) cos(theta2)]';
	alpha=linspace(0,1,npts);
	v3=kron(1-alpha,v1)+kron(alpha,v2);
	G=bsxfun(@rdivide, v3, sqrt(sum(v3.^2)));
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

