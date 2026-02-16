ks=0;

% ks=ks+1;
% in_plot.fdir_sim{ks}=fullfile(pwd,'../','r013'); 
% in_plot.str_sim{ks}='2D, dx = 33.3 m';

% ks=ks+1;
% in_plot.fdir_sim{ks}=fullfile(pwd,'../','r002'); 
% in_plot.str_sim{ks}='2D, dx = 10 m';

% ks=ks+1;
% in_plot.fdir_sim{ks}=fullfile(pwd,'../','r003'); 
% in_plot.str_sim{ks}='2D, dx = 1 m';

% ks=ks+1;
% in_plot.fdir_sim{ks}=fullfile(pwd,'../','r004'); 
% in_plot.str_sim{ks}='2D, dx = 0.1 m';

% ks=ks+1;
% in_plot.fdir_sim{ks}=fullfile(pwd,'../','r063'); 
% in_plot.str_sim{ks}='3D, dx = 10 m, 4 layers';

ks=ks+1;
in_plot.fdir_sim{ks}=fullfile(pwd,'../','r006'); 
in_plot.str_sim{ks}='3D, dx = 10 m, 40 layers';

ks=ks+1;
in_plot.fdir_sim{ks}=fullfile(pwd,'../','r009'); 
in_plot.str_sim{ks}='3D, dx = 1 m, 40 layers';

ks=ks+1;
in_plot.fdir_sim{ks}=fullfile(pwd,'../','r007'); 
in_plot.str_sim{ks}='3D, dx = 0.1 m, 40 layers';

% ks=ks+1;
% in_plot.fdir_sim{ks}=fullfile(pwd,'../','r014'); 
% in_plot.str_sim{ks}='2D fixed weir, dx = 33.3 m';

% ks=ks+1;
% in_plot.fdir_sim{ks}=fullfile(pwd,'../','r010'); 
% in_plot.str_sim{ks}='2D fixed weir, dx = 10 m';

% ks=ks+1;
% in_plot.fdir_sim{ks}=fullfile(pwd,'../','r012'); 
% in_plot.str_sim{ks}='2D fixed weir, dx = 0.1 m';

in_plot.sim_ref=1;
in_plot.lan='en';
in_plot.tag_serie='all';
in_plot.path_tiles='C:\checkouts\earth_tiles\';
% in_plot.order_anl=1; %order in which data is analyzed: 1=normal; 2=random based on time (ATTENTION!); 3=random based on seed `order_anl_param`
%The random generation based on time is not enough when submitting
%the same script to the cluster, even when there is a pause statement.
%The processing time is sometimes the same.
%The solution is to name the file differently and end with a number. The
%lines below take that number as the seed number.
% fname=mfilename;
% in_plot.order_anl_param=str2double(fname(end)); %seed random number in case `order_anl=3`
%in_plot.function_handles={@my_fcn,@my_other_fcn}; %cell array of ad-hoc functions exectued in the plot script
% in_plot.fdir_mat=fullfile(pwd,'mat'); %Overwrite the <mat> folder (useful if working with simulation in archived folder).
% in_plot.fdir_fig=fullfile(pwd,'fig'); %Overwrite the <figures> folder (useful if working with simulation in archived folder).
% in_plot.fig_resolution='r300'; %Resolution of PNG and JPG figures.
% in_plot.simdef_overwrite=0; %Overwrite `simdef` mat-file created at mdu/mdf level. 

