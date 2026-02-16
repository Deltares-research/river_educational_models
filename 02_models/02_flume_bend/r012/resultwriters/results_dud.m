% OpenDA version 3.3.0.-1 February 12 2025
% opening :c:\projects\VI-148_Struiksma_openDA\r006\stochObserver\noosObservations.xml
% NoosStochObserver[i]=TimeSeries(
%   Location = o2
%   Position = (0.0,0.0)
%   Height   = NaN
%   Quantity = waterlevel
%   Unit     = m
%   Source   = 
%   Id       = o2.waterlevel
%   relativestandarddeviation  = 0.0
%   timezone  = GMT
%   analtime  = 
%   standarddeviation  = 1.0E-5
%   status  = assimilation
%   Values   = 
%   (51544.006944444445=200001010010,0.03)
%
%   Values.length()=1
%)
% Starting Algorithm: 
%	className: org.openda.algorithms.Dud
%	dir.: c:\projects\VI-148_Struiksma_openDA\r006\algorithm
%	config.: dudAlgorithm.xml
%  Algorithm  Dud initialisation (stoch. obs. and stoch. model have been set)
%  Algorithm  configString = dudAlgorithm.xml
% opening :c:\projects\VI-148_Struiksma_openDA\r006\algorithm\dudAlgorithm.xml
%  Algorithm  Retrieving initial parameters from model
% Create new BBModelInstance with number: 0
% Instance initialization done
%  Algorithm  Starting optimizer
%  Algorithm  costFunction@class=org.openda.algorithms.SimulationKwadraticCostFunction
% Create new BBModelInstance with number: 1
% Instance initialization done
% CostFunction = SimulationKwadraticCostFunction
%  Algorithm  costFunction@weakParameterConstraint=true
%  Algorithm  costFunction@factor=0.5
%  Algorithm  costFunction@biasRemoval=false
%  Algorithm  costFunction@stdRemoval=false
%  Algorithm  costFunction@tryParallel=false
%  Algorithm  outerLoop@maxIterations=30
%  Algorithm  outerLoop@absTolerance=0.001
%  Algorithm  outerLoop@relTolerance=0.001
%  Algorithm  outerLoop@relToleranceLinearCost=1.0E-4
%  Algorithm  lineSearch@maxIterations=10
%  Algorithm  lineSearch@maxRelStepSize=10.0
%  Algorithm  lineSearch/backtracking@startIterationNegativeLook=3
%  Algorithm  lineSearch/backtracking@shorteningFactor=0.5
%  Algorithm  constraints@parameterConstraint=false
%  Algorithm  constraints/lowerbounds@Lbounds=null
%  Algorithm  constraints/upperbounds@Ubounds=null
% Application initializing finished
% Initializing Algorithm
% Evaluating with parameters 
% Params - containing:
%    1_o2= 0
% ========================================================================
% prepare no 1
% Create new BBModelInstance with number: 2
% Instance initialization done
%  resultItem id: evaluatedParameters, outputLevel: Essential, context: any
%  Params: 1_o2
evaluatedParameters{1}	=[0.0];
% ========================================================================
% evaluate no. 1
% NetcdfDataObject: station_id variable found in netcdf file c:\projects\VI-148_Struiksma_openDA\r006\stochModel\.\..\work2\DFM_OUTPUT_struiksma83\struiksma83_his.nc
% Getting model values at observed coordinates for scalar observation exchangeItem with id 'o2.waterlevel'.
%  resultItem id: predicted, outputLevel: Normal, context: initialization node 0
%  predictions: o2.waterlevel
predicted{1}	=[0.03795212499145074];
%  resultItem id: observed, outputLevel: Normal, context: initialization node 0
observed{1}	=[0.03];
% 
% -------------------------------------------------------------------------------------------------------------------------------------------
% RESIDUAL STATISTICS:
% -------------------------------------------------------------------------------------------------------------------------------------------
% ObsID		RMS		Bias		STD		Num of data		Min		Max
% -------------------------------------------------------------------------------------------------------------------------------------------
% o2.waterlevel		0.007952124991450739	-0.007952124991450739	0.0	1	-0.007952124991450739	-0.007952124991450739
% -------------------------------------------------------------------------------------------------------------------------------------------
%
%  resultItem id: costObserved, outputLevel: Essential, context: initialization node 0
costObserved{1}	=316181.459398277;
%  resultItem id: costWeakConstraintPenalty, outputLevel: Essential, context: initialization node 0
costWeakConstraintPenalty{1}	=0.0;
%  resultItem id: costTotal, outputLevel: Essential, context: initialization node 0
costTotal{1}	=316181.459398277;
% SimulationKwadraticCostFunction: evaluation 1 : cost = 3.162E5
% Evaluating with parameters 
% Params - containing:
%    1_o2= 1E-2
% ========================================================================
% prepare no 2
% Create new BBModelInstance with number: 3
% Instance initialization done
%  resultItem id: evaluatedParameters, outputLevel: Essential, context: any
%  Params: 1_o2
evaluatedParameters{2}	=[0.01];
% ========================================================================
% evaluate no. 2
% NetcdfDataObject: station_id variable found in netcdf file c:\projects\VI-148_Struiksma_openDA\r006\stochModel\.\..\work3\DFM_OUTPUT_struiksma83\struiksma83_his.nc
% Getting model values at observed coordinates for scalar observation exchangeItem with id 'o2.waterlevel'.
%  resultItem id: predicted, outputLevel: Normal, context: initialization node 1
%  predictions: o2.waterlevel
predicted{2}	=[0.03745687927750573];
%  resultItem id: observed, outputLevel: Normal, context: initialization node 1
observed{2}	=[0.03];
% 
% -------------------------------------------------------------------------------------------------------------------------------------------
% RESIDUAL STATISTICS:
% -------------------------------------------------------------------------------------------------------------------------------------------
% ObsID		RMS		Bias		STD		Num of data		Min		Max
% -------------------------------------------------------------------------------------------------------------------------------------------
% o2.waterlevel		0.007456879277505733	-0.007456879277505733	0.0	1	-0.007456879277505733	-0.007456879277505733
% -------------------------------------------------------------------------------------------------------------------------------------------
%
%  resultItem id: costObserved, outputLevel: Essential, context: initialization node 1
costObserved{2}	=278025.2427964721;
%  resultItem id: costWeakConstraintPenalty, outputLevel: Essential, context: initialization node 1
costWeakConstraintPenalty{2}	=0.5;
%  resultItem id: costTotal, outputLevel: Essential, context: initialization node 1
costTotal{2}	=278025.7427964721;
% SimulationKwadraticCostFunction: evaluation 2 : cost = 2.78E5
% Algorithm initialized
% Algorithm starting next step
% ======================================================
% DUD outer iteration no.1
% ======================================================
% -----------------------------------------------------
%  resultItem id: costs, outputLevel: Essential, context: any
costs{1}	=[278025.7427964721,316181.459398277];
% -----------------------------------------------------
% RHS norm: 745.6879277505733
% Start search until improvement,
% % Reducing stepsize! Relative step was:[-15.0503844343826]
%  resultItem id: linearCost, outputLevel: Normal, context: outer iteration 1
linearCost{1}	=31421.151227916853;
% Next try p=
%   Params - containing:
%      1_o2= 0.11
% ========================================================================
% prepare no 3
% Create new BBModelInstance with number: 4
% Instance initialization done
%  resultItem id: evaluatedParameters, outputLevel: Essential, context: any
%  Params: 1_o2
evaluatedParameters{3}	=[0.11];
% ========================================================================
% evaluate no. 3
% NetcdfDataObject: station_id variable found in netcdf file c:\projects\VI-148_Struiksma_openDA\r006\stochModel\.\..\work4\DFM_OUTPUT_struiksma83\struiksma83_his.nc
% Getting model values at observed coordinates for scalar observation exchangeItem with id 'o2.waterlevel'.
%  resultItem id: predicted, outputLevel: Normal, context: outer iteration 1
%  predictions: o2.waterlevel
predicted{3}	=[0.03266285389088962];
%  resultItem id: observed, outputLevel: Normal, context: outer iteration 1
observed{3}	=[0.03];
% 
% -------------------------------------------------------------------------------------------------------------------------------------------
% RESIDUAL STATISTICS:
% -------------------------------------------------------------------------------------------------------------------------------------------
% ObsID		RMS		Bias		STD		Num of data		Min		Max
% -------------------------------------------------------------------------------------------------------------------------------------------
% o2.waterlevel		0.0026628538908896188	-0.0026628538908896188	0.0	1	-0.0026628538908896188	-0.0026628538908896188
% -------------------------------------------------------------------------------------------------------------------------------------------
%
%  resultItem id: costObserved, outputLevel: Essential, context: outer iteration 1
costObserved{3}	=35453.9542211299;
%  resultItem id: costWeakConstraintPenalty, outputLevel: Essential, context: outer iteration 1
costWeakConstraintPenalty{3}	=60.5;
%  resultItem id: costTotal, outputLevel: Essential, context: outer iteration 1
costTotal{3}	=35514.4542211299;
% SimulationKwadraticCostFunction: evaluation 3 : cost = 3.551E4
% Error estimate for this outer iteration
% stop criterion 1, imain                            > maxit :	 1 < 30
% stop criterion 2, |new - previous cost|            < abstol:	 242511.28857534222 > 0.001
% stop criterion 3, |new - previous cost|/|new cost| < reltol:	 6.828523593952803 > 0.001
% stop criterion 4, linearized cost relative error: 0.016598648740386978 < 1.0E-4
% Algorithm starting next step
% ======================================================
% DUD outer iteration no.2
% ======================================================
% -----------------------------------------------------
%  resultItem id: costs, outputLevel: Essential, context: any
costs{2}	=[35514.4542211299,278025.7427964721];
% -----------------------------------------------------
% RHS norm: 266.28538908896184
% Start search until improvement,
%  resultItem id: linearCost, outputLevel: Normal, context: outer iteration 2
linearCost{2}	=136.9665708578298;
% Next try p=
%   Params - containing:
%      1_o2= 0.165
% ========================================================================
% prepare no 4
% Create new BBModelInstance with number: 5
% Instance initialization done
%  resultItem id: evaluatedParameters, outputLevel: Essential, context: any
%  Params: 1_o2
evaluatedParameters{4}	=[0.16547326141381702];
% ========================================================================
% evaluate no. 4
% NetcdfDataObject: station_id variable found in netcdf file c:\projects\VI-148_Struiksma_openDA\r006\stochModel\.\..\work5\DFM_OUTPUT_struiksma83\struiksma83_his.nc
% Getting model values at observed coordinates for scalar observation exchangeItem with id 'o2.waterlevel'.
%  resultItem id: predicted, outputLevel: Normal, context: outer iteration 2
%  predictions: o2.waterlevel
predicted{4}	=[0.030143665400319954];
%  resultItem id: observed, outputLevel: Normal, context: outer iteration 2
observed{4}	=[0.03];
% 
% -------------------------------------------------------------------------------------------------------------------------------------------
% RESIDUAL STATISTICS:
% -------------------------------------------------------------------------------------------------------------------------------------------
% ObsID		RMS		Bias		STD		Num of data		Min		Max
% -------------------------------------------------------------------------------------------------------------------------------------------
% o2.waterlevel		1.4366540031995542E-4	-1.4366540031995542E-4	0.0	1	-1.4366540031995542E-4	-1.4366540031995542E-4
% -------------------------------------------------------------------------------------------------------------------------------------------
%
%  resultItem id: costObserved, outputLevel: Essential, context: outer iteration 2
costObserved{4}	=103.19873624546521;
%  resultItem id: costWeakConstraintPenalty, outputLevel: Essential, context: outer iteration 2
costWeakConstraintPenalty{4}	=136.90700121462714;
%  resultItem id: costTotal, outputLevel: Essential, context: outer iteration 2
costTotal{4}	=240.10573746009237;
% SimulationKwadraticCostFunction: evaluation 4 : cost = 240.106
% Error estimate for this outer iteration
% stop criterion 1, imain                            > maxit :	 2 < 30
% stop criterion 2, |new - previous cost|            < abstol:	 35274.348483669804 > 0.001
% stop criterion 3, |new - previous cost|/|new cost| < reltol:	 146.91172671178964 > 0.001
% stop criterion 4, linearized cost relative error: 0.0029153897987854826 < 1.0E-4
% Algorithm starting next step
% ======================================================
% DUD outer iteration no.3
% ======================================================
% -----------------------------------------------------
%  resultItem id: costs, outputLevel: Essential, context: any
costs{3}	=[240.10573746009237,35514.4542211299];
% -----------------------------------------------------
% RHS norm: 14.366540031995541
% Start search until improvement,
%  resultItem id: linearCost, outputLevel: Normal, context: outer iteration 3
linearCost{3}	=142.1229627629017;
% Next try p=
%   Params - containing:
%      1_o2= 0.169
% ========================================================================
% prepare no 5
% Create new BBModelInstance with number: 6
% Instance initialization done
%  resultItem id: evaluatedParameters, outputLevel: Essential, context: any
%  Params: 1_o2
evaluatedParameters{5}	=[0.16855508399805647];
% ========================================================================
% evaluate no. 5
% NetcdfDataObject: station_id variable found in netcdf file c:\projects\VI-148_Struiksma_openDA\r006\stochModel\.\..\work6\DFM_OUTPUT_struiksma83\struiksma83_his.nc
% Getting model values at observed coordinates for scalar observation exchangeItem with id 'o2.waterlevel'.
%  resultItem id: predicted, outputLevel: Normal, context: outer iteration 3
%  predictions: o2.waterlevel
predicted{5}	=[0.030008867139755643];
%  resultItem id: observed, outputLevel: Normal, context: outer iteration 3
observed{5}	=[0.03];
% 
% -------------------------------------------------------------------------------------------------------------------------------------------
% RESIDUAL STATISTICS:
% -------------------------------------------------------------------------------------------------------------------------------------------
% ObsID		RMS		Bias		STD		Num of data		Min		Max
% -------------------------------------------------------------------------------------------------------------------------------------------
% o2.waterlevel		8.867139755643766E-6	-8.867139755643766E-6	0.0	1	-8.867139755643766E-6	-8.867139755643766E-6
% -------------------------------------------------------------------------------------------------------------------------------------------
%
%  resultItem id: costObserved, outputLevel: Essential, context: outer iteration 3
costObserved{5}	=0.39313083723059083;
%  resultItem id: costWeakConstraintPenalty, outputLevel: Essential, context: outer iteration 3
costWeakConstraintPenalty{5}	=142.05408170795937;
%  resultItem id: costTotal, outputLevel: Essential, context: outer iteration 3
costTotal{5}	=142.44721254518996;
% SimulationKwadraticCostFunction: evaluation 5 : cost = 142.447
% Error estimate for this outer iteration
% stop criterion 1, imain                            > maxit :	 3 < 30
% stop criterion 2, |new - previous cost|            < abstol:	 97.65852491490242 > 0.001
% stop criterion 3, |new - previous cost|/|new cost| < reltol:	 0.6855769458031425 > 0.001
% stop criterion 4, linearized cost relative error: 0.0033092529099153934 < 1.0E-4
% Algorithm starting next step
% ======================================================
% DUD outer iteration no.4
% ======================================================
% -----------------------------------------------------
%  resultItem id: costs, outputLevel: Essential, context: any
costs{4}	=[142.44721254518996,240.10573746009237];
% -----------------------------------------------------
% RHS norm: 0.8867139755643765
% Start search until improvement,
%  resultItem id: linearCost, outputLevel: Normal, context: outer iteration 4
linearCost{4}	=142.32159966088292;
% Next try p=
%   Params - containing:
%      1_o2= 0.169
% ========================================================================
% prepare no 6
% Create new BBModelInstance with number: 7
% Instance initialization done
%  resultItem id: evaluatedParameters, outputLevel: Essential, context: any
%  Params: 1_o2
evaluatedParameters{6}	=[0.16866964636171441];
% ========================================================================
% evaluate no. 6
% NetcdfDataObject: station_id variable found in netcdf file c:\projects\VI-148_Struiksma_openDA\r006\stochModel\.\..\work7\DFM_OUTPUT_struiksma83\struiksma83_his.nc
% Getting model values at observed coordinates for scalar observation exchangeItem with id 'o2.waterlevel'.
%  resultItem id: predicted, outputLevel: Normal, context: outer iteration 4
%  predictions: o2.waterlevel
predicted{6}	=[0.029997159233657866];
%  resultItem id: observed, outputLevel: Normal, context: outer iteration 4
observed{6}	=[0.03];
% 
% -------------------------------------------------------------------------------------------------------------------------------------------
% RESIDUAL STATISTICS:
% -------------------------------------------------------------------------------------------------------------------------------------------
% ObsID		RMS		Bias		STD		Num of data		Min		Max
% -------------------------------------------------------------------------------------------------------------------------------------------
% o2.waterlevel		2.8407663421325946E-6	2.8407663421325946E-6	0.0	1	2.8407663421325946E-6	2.8407663421325946E-6
% -------------------------------------------------------------------------------------------------------------------------------------------
%
%  resultItem id: costObserved, outputLevel: Essential, context: outer iteration 4
costObserved{6}	=0.04034976705296701;
%  resultItem id: costWeakConstraintPenalty, outputLevel: Essential, context: outer iteration 4
costWeakConstraintPenalty{6}	=142.247248018929;
%  resultItem id: costTotal, outputLevel: Essential, context: outer iteration 4
costTotal{6}	=142.28759778598197;
% SimulationKwadraticCostFunction: evaluation 6 : cost = 142.288
% Error estimate for this outer iteration
% stop criterion 1, imain                            > maxit :	 4 < 30
% stop criterion 2, |new - previous cost|            < abstol:	 0.15961475920798307 > 0.001
% stop criterion 3, |new - previous cost|/|new cost| < reltol:	 0.0011217756269106692 > 0.001
% stop criterion 4, linearized cost relative error: 0.27068779678557475 < 1.0E-4
% Algorithm starting next step
% ======================================================
% DUD outer iteration no.5
% ======================================================
% -----------------------------------------------------
%  resultItem id: costs, outputLevel: Essential, context: any
costs{5}	=[142.28759778598197,142.44721254518996];
% -----------------------------------------------------
% RHS norm: 0.28407663421325946
% Start search until improvement,
%  resultItem id: linearCost, outputLevel: Normal, context: outer iteration 5
linearCost{5}	=142.1867527817383;
% Next try p=
%   Params - containing:
%      1_o2= 0.169
% ========================================================================
% prepare no 7
% Create new BBModelInstance with number: 8
% Instance initialization done
%  resultItem id: evaluatedParameters, outputLevel: Essential, context: any
%  Params: 1_o2
evaluatedParameters{7}	=[0.168625703924912];
% ========================================================================
% evaluate no. 7
% NetcdfDataObject: station_id variable found in netcdf file c:\projects\VI-148_Struiksma_openDA\r006\stochModel\.\..\work8\DFM_OUTPUT_struiksma83\struiksma83_his.nc
% Getting model values at observed coordinates for scalar observation exchangeItem with id 'o2.waterlevel'.
%  resultItem id: predicted, outputLevel: Normal, context: outer iteration 5
%  predictions: o2.waterlevel
predicted{7}	=[0.030003577180203484];
%  resultItem id: observed, outputLevel: Normal, context: outer iteration 5
observed{7}	=[0.03];
% 
% -------------------------------------------------------------------------------------------------------------------------------------------
% RESIDUAL STATISTICS:
% -------------------------------------------------------------------------------------------------------------------------------------------
% ObsID		RMS		Bias		STD		Num of data		Min		Max
% -------------------------------------------------------------------------------------------------------------------------------------------
% o2.waterlevel		3.577180203485214E-6	-3.577180203485214E-6	0.0	1	-3.577180203485214E-6	-3.577180203485214E-6
% -------------------------------------------------------------------------------------------------------------------------------------------
%
%  resultItem id: costObserved, outputLevel: Essential, context: outer iteration 5
costObserved{7}	=0.06398109104103257;
%  resultItem id: costWeakConstraintPenalty, outputLevel: Essential, context: outer iteration 5
costWeakConstraintPenalty{7}	=142.1731401208604;
%  resultItem id: costTotal, outputLevel: Essential, context: outer iteration 5
costTotal{7}	=142.23712121190144;
% SimulationKwadraticCostFunction: evaluation 7 : cost = 142.237
% Error estimate for this outer iteration
% stop criterion 1, imain                            > maxit :	 5 < 30
% stop criterion 2, |new - previous cost|            < abstol:	 0.050476574080533965 > 0.001
% stop criterion 3, |new - previous cost|/|new cost| < reltol:	 3.5487623519415284E-4 > 0.001
% stop criterion 4, linearized cost relative error: 0.49946381123084566 < 1.0E-4
% ===================================================================
% SimulationKwadraticCostfunction: optimal results
%     number of evaluations: 7
%     all cost values:
%         [3.162E5,2.78E5,3.551E4,240.106,142.447,142.288,142.237]
%     all parameter values
%         [0,1E-2,0.11,0.165,0.169,0.169,0.169]
%     number of observations: 1
%     best cost:
%         cost = 142.237
%     best parameters:
%         
%        Params - containing:
%           1_o2= 0.169
% ===================================================================
% Optimal results are in model run dir c:\projects\VI-148_Struiksma_openDA\r006\stochModel\.\..\work8
% Algorithm Done
% Application Done
