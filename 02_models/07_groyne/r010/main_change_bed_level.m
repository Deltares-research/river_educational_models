%% PREAMBLE
clear; clc;
fpath_add_oet='c:\checkouts\oet_matlab\applications\vtools\general\addOET.m';
run(fpath_add_oet);

%% INPUT
fpath_nc='grd_net.nc';

zup=0; % elevation of the bed level increase (m)
x0=95; % start x coordinate of the bed level increase (m)
x1=105; % end x coordinate of the bed level increase (m)

%% CALC

nci=ncinfo(fpath_nc);
z=ncread(fpath_nc,'mesh2d_node_z'); % bed level (m)
x=ncread(fpath_nc,'mesh2d_node_x'); % x coordinate (m)

% find nodes within the specified x range
ind=find(x>=x0 & x<=x1);
% increase bed level at these nodes
z_new=zeros(size(z)); % make a copy of original bed level
z_new(ind)=z_new(ind)+zup;
% write modified bed level back to netCDF file
ncwrite_class(fpath_nc,'mesh2d_node_z',z,z_new)