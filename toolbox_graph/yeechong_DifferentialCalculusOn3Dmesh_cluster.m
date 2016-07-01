path(path, 'toolbox/');
path(path, 'off/');
clear options;

clear options;
% load the mesh
name = 'cluster'; %elephant-50kv
options.name = name; % useful for displaying
[vertex,faces] = read_mesh(name);
% compute the curvature 计算曲率
options.curvature_smoothing = 10;
options.verb = 0;
[Umin,Umax,Cmin,Cmax,Cmean,Cgauss,Normal] = compute_curvature(vertex,faces,options);
% display

clf;
subplot(1,2,1);
options.face_vertex_color =0.1;% perform_saturation(Cgauss,0.01);%颜色如何调出来
plot_mesh(vertex,faces, options); 
shading interp ; colormap jet(256) ;
% title( 'Gaussian curvature');

subplot(1,2,2);
options.face_vertex_color = perform_saturation(abs(Cmin)+abs(Cmax),1.2);
plot_mesh(vertex,faces, options); shading interp ; colormap jet(256) ;
% title( 'Total curvature');



























