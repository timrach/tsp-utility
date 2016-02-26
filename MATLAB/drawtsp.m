function [ output_args ] = drawtsp( coords, path, direction)
%DRAWTSP - Draws a tsp problem and, if given, a path in it.
%
%INPUT: The problem coordinates and optional an array of point ids
%       representing a path in the problem.
%       Coordinates must be given as mx2 array, the path is a 1xn array.
%
%OUTPUT: ~
%
%EXAMPLE PATH: [6,7,8,9,0,1,12,2,3,11,10,4,5,6]
%
% Author: Tim Rach
% email: tim.rach91@gmail.com

%------------- BEGIN CODE --------------
%A function to draw arrows in the plot
arrow = @(x,y) quiver( x(1),y(1),x(2)-x(1),y(2)-y(1),0);

%setup the plot properties
figure;
hold on;
set(gca,'YDir','reverse');

%Find coordinate min and max values and set the plot range to this area.
axis([min(coords(:,1)),max(coords(:,1)),min(coords(:,2)),max(coords(:,2))]);

%Draw the points
plot(coords(:,1), coords(:,2),'o');
%Draw the path
for i = 1 : size(path,2)-1
    s = path(i)+1;
    t = path(i+1)+1;
    %line([coords(s,1),coords(t,1)], [coords(s,2),coords(t,2)]);
    arrow([coords(s,1),coords(t,1)], [coords(s,2),coords(t,2)]);
end

%Draw the starting point
if(size(path) > 0)
    sp = (path(1)+1);
    plot(coords(sp,1),coords(sp,2),'o','MarkerFaceColor','b');
end
hold off;
end
%------------- END OF CODE --------------