A = [0 1 1 0 0 0 0 0; 1 0 1 1 0 0 0 0; 1 0 0 1 0 1 0 0; 0 1 1 0 1 0 1 0; 0 0 0 1 0 0 1 1; 0 0 1 0 0 0 0 1; 0 0 0 1 1 0 0 1; 0 0 0 0 1 1 1 0];

deg = sum(A); % The array "deg" contains the degrees. 
nnodes = length(deg);

% Degree centrality.
[sorted, order] = sort(deg,'descend');
% The array "order" now contains the nodes sorted by degree. 
nodes_by_degree = order(1:5);
% This command prints the 5 leading nodes. 
degree = sorted(1:5);
% This command prints their degrees.
