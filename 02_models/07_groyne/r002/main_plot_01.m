%
%Victor Chavarrias (victor.chavarrias@deltares.nl)
%
%$Revision$
%$Date$
%$Author$
%$Id$
%$HeadURL$
%
%Description

%% PREAMBLE

% dbclear all;
clear
clc
fclose all;
clear mex

%% PATHS

%Check out GitHub repository of OET Matlab:
%https://github.com/openearth/matlab-tools 
%into a folder (e.g., <c:\checkouts\oet_matlab\>). 
%do recursive checkout to have all submodules (e.g., Quickplot):
%```
%git clone https://github.com/openearth/matlab-tools oet_matlab --recursive
%```
%`fpath_add_oet` points to <oet_matlab\applications\vtools\general\addOET.m>
fpath_add_oet='c:\checkouts\oet_matlab\applications\vtools\general\addOET.m';

%% ADD OET

run(fpath_add_oet);

%% simulation

% input_all
% input_2DH
input_3D

%% 2DH ls

tag='PRF';
in_plot.(tag).do=1;
in_plot.(tag).do_p=1; %regular plot
in_plot.(tag).do_p_single=1; %plot single result
in_plot.(tag).do_all_t=0; %all times together
in_plot.(tag).do_all_s=1; %all simulations together
in_plot.(tag).do_diff_t=0; %difference of each simulation in time
in_plot.(tag).do_diff_s=0; %difference of each simulation with reference simulation
in_plot.(tag).do_all_t_diff_t=0; %all times together, difference in time
in_plot.(tag).do_all_t_xt=0; %all times together xt
in_plot.(tag).do_all_t_xt_diff_t=0; %all times together xt, difference in time
in_plot.(tag).var={'wl'}; %list variables: `open D3D_list_of_variables`
in_plot.(tag).tim=Inf; %times analyzed [datenum(1,nt)], [datetime(1,nt)], or [index(1,nt)]. NaN=all, Inf=last.
in_plot.(tag).use_local_time=0; %use the time of each simulation rather than the time of the reference simulation for comparison
in_plot.(tag).tim_type=1;
in_plot.(tag).tim_tol=minutes(5); %tolerance to match times [duration]
in_plot.(tag).fig_size=[0,0,20,15];
in_plot.(tag).pli{1,1}=[0,0.5;199,0.5]; %polyline to take data [char] (path to file with polyline), [double] (coordinates of points [np,2] (x,y)).
in_plot.(tag).ylims=[NaN,NaN;2.57,3.53];
in_plot.(tag).xlims=[NaN,NaN;0,200];
in_plot.(tag).fig_overwrite=1; %overwrite figures
in_plot.(tag).overwrite=0; %overwrite mat-files
in_plot.(tag).tim_movie=40; %movie duration [s]
in_plot.(tag).do_movie=0; %
in_plot.(tag).ml=2.5;
% in_plot.(tag).filter_lim=[0.992,1.1];
in_plot.(tag).do_marker=1;
in_plot.(tag).markersize=5;
in_plot.(tag).do_staircase=0;
in_plot.(tag).plot_val0=0; %plot initial
in_plot.(tag).do_title=0; %add title to the plot
in_plot.(tag).Lref='AD'; 
in_plot.(tag).do_leg=1; 
% in_plot.(tag).xdir='reverse';
% in_plot.(tag).leg_mea='Carnott'; %legend of measurements (default is 'measurements [-]')
% in_plot.(tag).xlab_str='whatever you want'
% in_plot.(tag).cmap=[0,0,0;1,1,1]; %custom colormap for each line in the plot
% in_plot.(tag).leg_str={'a','b'}; %custom legend

%%

D3D_gdm(in_plot);