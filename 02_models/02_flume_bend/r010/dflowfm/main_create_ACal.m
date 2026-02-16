%% INPUT

fpath_map=fullfile(pwd,'flume_bend_net.nc');
ACal_base=4.227523; %value everywhere except in around the fixed weir
ACal_pol=0.0001; %value inside the fixed weir polygon
fxw_lin=[0,12.8;0,12.1];
fxw_pol=[0,13.0;0,12.1;0.5,12.1;0.5,13.0;0,13.0];

%% CALC

x=ncread(fpath_map,'mesh2d_face_x');
y=ncread(fpath_map,'mesh2d_face_y');

%% PLOT

figure
hold on
plot(fxw_lin(:,1),fxw_lin(:,2),'r-','LineWidth',2)
plot(fxw_pol(:,1),fxw_pol(:,2),'b-','LineWidth',1);
scatter(x,y,10,'k','filled')
axis equal
xlabel('x (m)')
ylabel('y (m)')

%% WRITE

ACal=ACal_base*ones(size(x));
in_fxw_pol=inpolygon(x,y,fxw_pol(:,1),fxw_pol(:,2));
ACal(in_fxw_pol)=ACal_pol;

mat=[x,y,ACal];
fpath_out=fullfile(pwd,'ACal.xyz');
writematrix(mat,fpath_out,'Delimiter','space','filetype','text');