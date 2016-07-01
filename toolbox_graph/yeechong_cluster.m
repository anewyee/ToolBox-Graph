% load the mesh
name = 'cluster';
options.name = name; % useful for displaying
[vertex,faces] = read_mesh(name);
% compute the curvature
options.curvature_smoothing = 10;
options.verb = 0;
[Umin,Umax,Cmin,Cmax,Cmean,Cgauss,Normal] = compute_curvature(vertex,faces,options);
% display
clf;
subplot(1,2,1);
options.face_vertex_color = perform_saturation(Cgauss,1.2);
plot_mesh(vertex,faces, options); shading interp; colormap jet(256);
title('Gaussian curvature');
subplot(1,2,2);
options.face_vertex_color = perform_saturation(abs(Cmin)+abs(Cmax),1.2);
plot_mesh(vertex,faces, options); shading interp; colormap jet(256);
title('Total curvature');