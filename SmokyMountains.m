%% Define root paths

groupArea = 'SmokyMountains';

Ac_sqKm = 0.5;
AcSubFolderName = ['Ac0p5km2'];

phStepLength = 10;
phbBandThickness =15;

Defaults;
addpath(phToolsPath);
addpath(topoToolboxFilePath);

%% Define job parameters, include Region, supercatchment

% SupercatchmentNum can be a single value or list, and contains the ID
% numbers for all supercatchments to be passed to PHRun.

supercatchmentNum = [23];

pixelLength = 30; % in m
Ac=((1000*1000)/(30*30))*Ac_sqKm; %convert sq km to pixel num
minBenchLength=3;


Colors;
plotColor = blue;
outputFigType = 'png';
peakElevationForOutputFig = 2000;
pdfHeight = 1500;


%%
RunPH
