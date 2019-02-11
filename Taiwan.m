%% Define root paths

groupArea = 'Taiwan';

Ac_sqKm = 0.5;
AcSubFolderName = ['Ac0p5km2'];

phStepLength = 25;
phbBandThickness =25;

Defaults;
addpath(phToolsPath);
addpath(topoToolboxFilePath);

%% Define job parameters, include Region, supercatchment

% SupercatchmentNum can be a single value or list, and contains the ID
% numbers for all supercatchments to be passed to PHRun.

supercatchmentNum = [2,3,4,5,6,7,8,12,13,14,15,16,17,18,20,21,22,23,24,25,27,30,31,32,33,34];

pixelLength = 30; % in m
Ac=((1000*1000)/(30*30))*Ac_sqKm; %convert sq km to pixel num
minBenchLength=3;


Colors;
plotColor = blue;
outputFigType = 'png';
peakElevationForOutputFig = 4000;
pdfHeight = 2500;


%%
RunPH
