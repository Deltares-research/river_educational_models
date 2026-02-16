
clear

%% input

h=5; %initial flow depth everywhere [m]
x0=0; %x origin [m]
y0=0; %y origin [m]
dx=10; %space step in x direction [m]
dy=10; %space step in y direction [m]
L=1000; %domain length [m]
B=300; %width [m]
slope=1e-4; %slope [-]

%% calculation

etab0=-h; %bed level at downstream end [m AD]
x_v=x0:dx:L;
y_v=y0:dy:B;

nx=numel(x_v);
ny=numel(y_v);
nc=nx*ny;
xyz_etab=NaN(nc,3);

kc=0;
for kx=1:nx
    for ky=1:ny
        kc=kc+1;
        xyz_etab(kc,1)=x_v(kx);
        xyz_etab(kc,2)=y_v(ky);
        xyz_etab(kc,3)=etab0+(L-x_v(kx))*slope;
    end
end

xyz_etaw=xyz_etab+[zeros(nc,1),zeros(nc,1),ones(nc,1).*h];

%% write

writematrix(xyz_etab,'etab.xyz','delimiter',' ','FileType','text')
writematrix(xyz_etaw,'etaw.xyz','delimiter',' ','FileType','text')


