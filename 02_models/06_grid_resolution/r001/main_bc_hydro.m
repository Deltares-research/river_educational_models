
clear

%% input

B=1;

h=5; %flow depth [m]
u=1.5; %flow velocity [m/s]
T=10*24*3600; %period [s]
tend=90*24*3600; %final time [s]
q0=h*u*B; %base value [m^3/s]

L=2000e3;
x0=0;
y0=0;
dx=20;
dy=1;

etab0=0;
Cf=0.007;
g=9.81;

%% sinusoidal serie

t=0:3600:T/2;
y=2*q0*sin(2*pi*t/T)+q0;

%% add constant at the end

t=[t,t(end)+1,tend];
y=[y,q0,q0];

%% plot

figure
hold on
plot(t,y)

%% write

writematrix([t;y]','bc_aux.txt','Delimiter',' ')

%% bed level

slope=Cf*(u*h)^2/g/h^3;
C=sqrt(g/Cf);

%%

x_v=-dx/2:dx:L+dx/2;
y_v=-dy/2:dy:B+dy/2;

%%

nx=numel(x_v);
ny=numel(y_v);
nc=nx*ny;
xyz=NaN(nc,3);

kc=0;
for kx=1:nx
    for ky=1:ny
        kc=kc+1;
        xyz(kc,1)=x_v(kx);
        xyz(kc,2)=y_v(ky);
        xyz(kc,3)=etab0+(L-x_v(kx))*slope;
    end
end

xyz_etaw=xyz+[zeros(nc,1),zeros(nc,1),ones(nc,1).*h];

%%

writematrix(xyz,'etab.xyz','delimiter',' ','FileType','text')
writematrix(xyz_etaw,'etaw.xyz','delimiter',' ','FileType','text')


