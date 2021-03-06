n=128

params.nx           = n;
params.ny           = n;
params.Lx           = 4;
params.Ly           = 4;
params.eta          = 1e-3;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
params.nu           = 1/150;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
params.CFL          = 0.25;
params.T_end        = 8.0;
params.dt           = min(1e-1,params.eta);
params.iplot        = 50; % plot every iplot time steps
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
params.x            = params.Lx*(0:params.nx-1)/(params.nx);
params.y            = params.Ly*(0:params.ny-1)/(params.ny); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% allocate memory
params.mask         = zeros(params.nx,params.ny);
params.masksponge   = zeros(params.nx,params.ny);
params.dealias      = zeros(params.nx,params.ny);
params.us           = zeros(params.nx,params.ny,2);
% Options:
params.inicond            = 'turbulence';
params.moving_obstacle    = 'no';
params.explicit_diffusion = 'no';
params.vorticity_sponge   = 'no';
params.mask_geometry      = 'cylinder';