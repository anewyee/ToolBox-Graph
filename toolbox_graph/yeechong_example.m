path(path, 'toolbox/');
path(path, 'off/');
clear options;
% load the mesh
name = 'cluster'; %%elephant-50kv
options.name = name;
[vertex,faces] = read_mesh(name);
A = triangulation2adjacency(faces);
% you can try with other boundary type
options.boundary = 'circle';
% you can try with other Laplacians
options.laplacian = 'conformal';


% compute the layout in 2D
options.method = 'parameterization';
options.verb = 0;
xy = compute_parameterization(vertex,faces,options);
% display the parameterization
clf;
% subplot(1,2,1);
plot_mesh(vertex,faces,options); 
shading faceted; axis tight;
%subplot(1,2,2);
%plot_graph(A,xy,'k.-'); axis tight;
%title('Parameterization');
% 
% % compute the parameterization
% options.method = 'freeboundary';
% xy1 = compute_parameterization(vertex,faces,options);
% % display the parameterization
% clf;
% subplot(1,2,1);
% plot_graph(A,xy,'k.-'); axis tight;
% title('Fixed boundary');
% subplot(1,2,2);
% plot_graph(A,xy1,'k.-'); axis tight;
% title('Free boundary');

