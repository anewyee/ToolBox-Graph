path(path, 'toolbox/');
path(path, 'off/');
clear options;
% load the mesh
name = 'cluster'; %elephant-50kv
options.name = name; % useful for displaying
[vertex,faces] = read_mesh(name);
% display the mesh
clf;
plot_mesh(vertex, faces);
shading interp;
