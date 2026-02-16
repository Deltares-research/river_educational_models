%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                 VTOOLS                 %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%Victor Chavarrias (victor.chavarrias@deltares.nl)
%
%$Revision: 19843 $
%$Date: 2024-10-23 13:33:21 +0200 (Wed, 23 Oct 2024) $
%$Author: chavarri $
%$Id: D3D_gdm.m 19843 2024-10-23 11:33:21Z chavarri $
%$HeadURL: https://svn.oss.deltares.nl/repos/openearthtools/trunk/matlab/applications/vtools/D3D/get_data_mat/D3D_gdm.m $
%
%variables: open D3D_list_of_variables

%%
%% CALLING 
%%

%
%Victor Chavarrias (victor.chavarrias@deltares.nl)
%
%$Revision: 19843 $
%$Date: 2024-10-23 13:33:21 +0200 (Wed, 23 Oct 2024) $
%$Author: chavarri $
%$Id: D3D_gdm.m 19843 2024-10-23 11:33:21Z chavarri $
%$HeadURL: https://svn.oss.deltares.nl/repos/openearthtools/trunk/matlab/applications/vtools/D3D/get_data_mat/D3D_gdm.m $
%
%Description

%% PREAMBLE

% dbclear all;
clear
clc
fclose all;

%% PATHS

%Check out SVN repository:
%https://svn.oss.deltares.nl/repos/openearthtools/trunk/matlab/
%into a folder (e.g., <dir_checkout>).
%`fpath_add_oet` points to <dir_checkout\applications\vtools\general\addOET.m>
fpath_add_oet='c:\checkouts\oet_matlab\applications\vtools\general\addOET.m';

%The source of QuickPlot is now within the source code of Delft3D.
%Check it out by:
%```
% git init
% git remote add -f origin https://git.deltares.nl/oss/delft3d
% git config core.sparseCheckout true
% git sparse-checkout set src/tools_lgpl/matlab/quickplot/progsrc
%```
%and point here to the folder where it has been checked out.
fdir_d3d='c:\checkouts\qp\';

%% ADD OET

if isunix %we assume that if Linux we are in the p-drive. 
    fpath_add_oet=strrep(strrep(strcat('/',strrep(fpath_add_oet,'P:','p:')),':',''),'\','/');
end
run(fpath_add_oet);

%% PATHS

fpaths=paths_project(fpath_project);

%% simulation

ks=0;

ks=ks+1;
in_plot.fdir_sim{ks}=fullfile('../','dimr12','dflowfm'); 
in_plot.str_sim{ks}='reference';

in_plot.sim_ref=1;
in_plot.lan='en';
in_plot.tag_serie='01';
in_plot.path_tiles='C:\checkouts\earth_tiles\';
% in_plot.order_anl=1; %order in which data is analyzed: 1=normal; 2=random based on time (ATTENTION!); 3=random based on seed `order_anl_param`
%The random generation based on time is not enough when submitting
%the same script to the cluster, even when there is a pause statement.
%The processing time is sometimes the same.
%The solution is to name the file differently and end with a number. The
%lines below take that number as the seed number.
% fname=mfilename;
% in_plot.order_anl_param=str2double(fname(end)); %seed random number in case `order_anl=3`

%% 2DH

tag='fig_map_2DH_01';
in_plot.(tag).do=1;
in_plot.(tag).do_p=1; %pass through plotting routine
in_plot.(tag).do_p_single=1; %plot single result
in_plot.(tag).var={'wl'}; %open D3D_list_of_variables
in_plot.(tag).tim=NaN; %all times
in_plot.(tag).clims=[5,9]; 
in_plot.(tag).do_movie=1; %
in_plot.(tag).tim_movie=40; %movie duration [s]
in_plot.(tag).fig_overwrite=0; %overwrite figures
in_plot.(tag).overwrite=1; %overwrite mat-files
in_plot.(tag).do_axis_equal=1;
in_plot.(tag).plot_tiles=1; %plot satellite background image
in_plot.(tag).epsg_in=28992; %

%%

D3D_gdm(in_plot);
