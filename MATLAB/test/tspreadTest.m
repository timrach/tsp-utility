%Test tspread

%% Number of Attributes
result = tspread('testproblem.tsp');
assert(size(result,1) == 6);
assert(size(result,2) == 1);

%% Number of parsed coordinates should match given dimension
result = tspread('testproblem.tsp');
coordinates = result('COORDINATES');
dimension = str2double(result('DIMENSION'));
assert(size(coordinates,1) == dimension);
assert(size(coordinates,2) == 2);