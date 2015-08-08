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