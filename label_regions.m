clear all, close all
addpath('helper-functions');

%% Input
FN = 'SemImage004';

%%
regions_list = read_regions_list_from_file(strcat('regions/', FN, '_regions.csv'));
im = imread(strcat('raw/', FN, '.tif'));

figure
set(gcf, 'Position', [-1679 71 1680 933]);

fprintf('LABELS: \n')
fprintf('   1 = nothing/skip \n');
fprintf('   2 = nucleus \n')
fprintf('   3 = microvilli \n')
fprintf('   4 = goblet cells \n')
fprintf('   5 = basement membrane \n');
class_labels = assign_class_labels(im, regions_list);

output_fn = strcat('class_label_masks/', FN, '.csv');
csvwrite(output_fn, class_labels);