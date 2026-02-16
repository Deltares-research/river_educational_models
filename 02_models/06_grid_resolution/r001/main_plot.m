
%% PREAMBLE

clear

%% INPUT

fpath_sim=fullfile(pwd,'../');
% n_v=[20,40,100,1000,2000,10000];
n_v=[20,40,100,1000,2000,10000,100000];
kt=130;

%% LOAD

ns=numel(n_v);
x=cell(ns,1);
h=x;
for ks=1:ns
    fpath_map=fullfile(fpath_sim,sprintf('n%06d',n_v(ks)),'dflowfm','output','FlowFM_map.nc');
    x{ks,1}=ncread(fpath_map,'mesh2d_face_x');
    h{ks,1}=ncread(fpath_map,'mesh2d_waterdepth',[1,kt],[Inf,1]);
end %ns

%% PLOT

%%

cmap=jet(ns);
leg_str=cell(ns,1);
han=NaN(ns,1);
figure
hold on
for ks=1:ns
    han(ks)=plot(x{ks,1},h{ks,1},'-','color',cmap(ks,:));
    leg_str{ks,1}=sprintf('dx = %1.0f m',abs(diff(x{ks,1}(1:2))));
end
legend(han,leg_str)
xlabel('streamwise coordinate [m]')
ylabel('flow depth [m]')
print(gcf,'fw_1.png','-dpng','-r300')
