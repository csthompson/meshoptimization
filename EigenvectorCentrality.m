A = [0 1 1 0 0 0 0 0; 1 0 1 1 0 0 0 0; 1 0 0 1 0 1 0 0; 0 1 1 0 1 0 1 0; 0 0 0 1 0 0 1 1; 0 0 1 0 0 0 0 1; 0 0 0 1 1 0 0 1; 0 0 0 0 1 1 1 0];

deg = sum(A); % The array "deg" contains the degrees. 
nnodes = length(deg);

% Eigenvector centrality.
[V,D]=eig(A);
% The eigenvector with leading eigenvalue is the last column of V.
evcent=-V(:,nnodes);
norm = sum(evcent);
evcent = evcent/norm; % Normalised eigenvector centrality.
[sorted, order] = sort(evcent,'descend');
nodes_by_evcntr = order(1:5); % This command prints the 5 leading nodes. evcntr = sorted(1:5)? % This command prints their eigenvector centrality.