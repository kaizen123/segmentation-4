clear all, close all

addpath('helper-functions')
addpath('raw')
addpath('resized')

%% list files
files_list = dir('raw');
files_list = {files_list.name};
files_list(~startsWith(files_list, 'SemImage')) = [];

%% resize + save
parfor ii = 1:length(files_list)
    resize_image(files_list{ii});
end