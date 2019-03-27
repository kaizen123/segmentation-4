clear all, close all
addpath('helper-functions');

%% Input 
FN = 'SemImage004.tif';

%%
im = imread(strcat('raw/', FN));

figure
set(gcf, 'Position', [-1679 71 1680 933]);
imshow(im);
hold on
title(sprintf('%s. Left-click to create region, right-click when finished.', FN))
regions_list = create_regions_list();
regions_fn = strcat('regions/', strtok(FN, '.tif'), '_regions.csv');
export_regions_list(regions_list, regions_fn);
