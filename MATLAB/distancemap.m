function [dists] = distancemap( coords )
%DISTANCEMAP - Caluclates all distances between the input coordinates
%
%INPUT: A mx2 matrix containing m points in a 2 dimensional space.
%
%OUTPUT: A mxm matrix containing the distances between the points.
%
%NOTE: Feel free to extend this function to also parse other
%      types of data sections.
%
% Example input:
%     [1000, 300;
%      1000, 600;
%      1000, 900;
%      1000, 1200]
%
% Example output:
%      0,   300,   600,   900;
%    300,     0,   300,   600;
%    600,   300,     0,   300;
%    900,   600,   300,     0;
%
% Author: Tim Rach
% email: tim.rach91@gmail.com

%------------- BEGIN CODE --------------
%Inital distance is zero for all points
dists = zeros(size(coords,1));

i = 1;
%For all points in the array
for p1 = coords'
    j = 1;
    %iterate the complete array
    for p2 = coords'
        %and calculate the distances between the points
       dists(i,j) = norm(p1-p2);
       j = j + 1;
    end
    i = i + 1;
end
end
%------------- END OF CODE --------------