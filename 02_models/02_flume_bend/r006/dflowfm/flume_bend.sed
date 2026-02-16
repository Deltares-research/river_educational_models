[SedimentFileInformation]
    FileCreatedBy         = Deltares, FM-Suite DFlowFM Model Version 4.11.0.4098, DFlow FM Version 1.2.177.142431 
    FileCreationDate      = Fri Jun 07 2024, 12:48:56 
    FileVersion           = 02.00                  
[SedimentOverall]
    Cref                  = 1600                   [kg/m3]   Reference density for hindered settling calculations
[Sediment]
    Name                  = #sed1#                           Name of sediment fraction
    SedTyp                = bedload                          Must be "sand", "mud" or "bedload"
    IniSedThick           = #inised.xysdb#         [m]       Initial sediment layer thickness at bed (overuled if IniComp is prescribed)
    RhoSol                = 2650                   [kg/m3]   Specific density
    TraFrm                = 4                                Integer selecting the transport formula
    CDryB                 = 1600                   [kg/m3]   Dry bed density
    SedDia                = 0.0045                 [m]       Median sediment diameter (D50)
    ACal                  = 4.22                   [-]       Calibration coefficient
    PowerB                = 0                      [-]       Power b
    PowerC                = 2.5                    [-]       power c
    RipFac                = 1                      [-]       Ripple factor or efficiency factor
    ThetaC                = 1E-08                  [-]       Critical mobility factor
