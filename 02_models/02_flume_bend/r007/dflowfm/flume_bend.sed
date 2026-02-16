[SedimentFileInformation]
    FileCreatedBy         = Deltares, FM-Suite DFlowFM Model Version 4.15.0.6553, DFlow FM Version Deltares, D-Flow FM1.2.184.b981bf9c7329808883c69399458284afcf0d887f 
    FileCreationDate      = Sun Nov 17 2024, 06:58:24 
    FileVersion           = 02.00                  
[SedimentOverall]
    Cref                  = 1600                   [kg/m3]   Reference density for hindered settling calculations
[Sediment]
    Name                  = #sed1#                           Name of sediment fraction
    SedTyp                = bedload                          Must be "sand", "mud" or "bedload"
    IniSedThick           = 5                      [m]       Initial sediment layer thickness at bed
    RhoSol                = 2650                   [kg/m3]   Specific density
    TraFrm                = 4                                Integer selecting the transport formula
    CDryB                 = 1600                   [kg/m3]   Dry bed density
    SedDia                = 0.0045                 [m]       Median sediment diameter (D50)
    ACal                  = 4.22                   [-]       Calibration coefficient
    PowerB                = 0                      [-]       Power b
    PowerC                = 2.5                    [-]       power c
    RipFac                = 1                      [-]       Ripple factor or efficiency factor
    ThetaC                = 1E-08                  [-]       Critical mobility factor
[Sediment]
    Name                  = #tracer1#                        Name of sediment fraction
    SedTyp                = bedload                          Must be "sand", "mud" or "bedload"
    IniSedThick           = #tracer1_IniSedThick.xyz# [m]       Initial sediment layer thickness at bed
    RhoSol                = 2650                   [kg/m3]   Specific density
    TraFrm                = 4                                Integer selecting the transport formula
    CDryB                 = 1600                   [kg/m3]   Dry bed density
    SedDia                = 0.0045                 [m]       Median sediment diameter (D50)
    ACal                  = 4.22                   [-]       Calibration coefficient
    PowerB                = 0                      [-]       Power b
    PowerC                = 2.5                    [-]       power c
    RipFac                = 1                      [-]       Ripple factor or efficiency factor
    ThetaC                = 1E-08                  [-]       Critical mobility factor
