%% Define root paths

groupArea = 'GabilanMesa';
supercatchmentNum = [1,2];
Ac_sqKm = 0.1;
phStepLength = 10;
phbBandThickness=5;

AcSubFolderName = [num2str(Ac_sqKm),'SqKmAc'];
Defaults;

addpath(phToolsPath)
addpath(topoToolboxFilePath)

%% Define job parameters, include Region, supercatchment

% SupercatchmentNum can be a single value or list, and contains the ID
% numbers for all supercatchments to be passed to PHRun.
pixelLength = 30; % in m
Ac=((1000*1000)/(30*30))*Ac_sqKm; %convert sq km to pixel num
minBenchLength=3;


Colors;
plotColor = blue;
outputFigType = 'png';
peakElevationForOutputFig = 700;
pdfHeight = 350;

upperMode  = 220;
lowerMode = 120;


%%
RunPH
