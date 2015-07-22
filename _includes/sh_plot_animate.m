%% Animate the Surface
% To animate the surface, use a for loop to change the data in your plot.
% To replace the surface data, set the |XData|, |YData|, and |ZData|
% properties of the surface to new values. To control the speed of the
% animation, use |pause| after updating the surface data.

scale = [linspace(0,1,20) linspace(1,-1,40)];    % surface scaling (0 to 1 to -1)

for ii = 1:length(scale)

	rho = radius + scale(ii)*amplitude*yy/order;

	r = rho.*sin(theta);
	x = r.*cos(phi);
	y = r.*sin(phi);
	z = rho.*cos(theta);

	s.XData = x;    % replace surface x values
	s.YData = y;    % replace surface y values
	s.ZData = z;    % replace surface z values

	pause(0.05)     % pause to control animation speed
end

displayEndOfDemoMessage(mfilename)
