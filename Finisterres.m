%% Define root paths

groupArea = 'Finisterres';
groupName = 'Finisterres';
Defaults;

addpath(phToolsPath)
addpath(topoToolboxFilePath)

%% Define job parameters, include Region, supercatchment

% SupercatchmentNum can be a single value or list, and contains the ID
% numbers for all supercatchments to be passed to PHRun.
Ac=555;
minBenchLength=3;
supercatchmentNum = [12];

Colors;
plotColor = blue;
outputFigType = 'png';
peakElevationForOutputFig = 1200;
pdfHeight = 1000;


%%
RunPH
