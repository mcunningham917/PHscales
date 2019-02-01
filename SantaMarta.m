%% Define root paths

groupArea = 'SantaMarta';

Ac_sqKm = 0.01;
phStepLength = 10;

AcSubFolderName = [num2str('Ac_sqkm'),'SqKmAc'];
Defaults;

addpath(phToolsPath)
addpath(topoToolboxFilePath)

%% Define job parameters, include Region, supercatchment

% SupercatchmentNum can be a single value or list, and contains the ID
% numbers for all supercatchments to be passed to PHRun.
pixelLength = 30; % in m
Ac=((1000*1000)/(30*30))*Ac_sqKm; %convert sq km to pixel num
minBenchLength=3;
supercatchmentNum = [19];

Colors;
plotColor = blue;
outputFigType = 'png';
peakElevationForOutputFig = 4000;
pdfHeight = 2500;


%%
RunPH