%% Testing the DiLu binarization method

clc;close all;clear;

% Crucial unique parameters
k1 = 0.2;  % variation range [0 0.4]
k2 = 1.3;  % variation range [0.7 1]

%% Loading images
% 
%  The example image PR1.png and its Ground Truth were taken from the DIBCO 2011 dataset
%  DIBCO11-machine_printed: 
%  http://utopia.duth.gr/~ipratika/DIBCO2011/benchmark/dataset/DIBCO11-machine_printed.rar

im = imread('PR1.png'); imshow(im); title('Original document image');
GT = imread('PR1_GT.tiff');

%% Binarize document

imBin = DiLu(im,k1,k2);
figure; imshow(imBin); title('Binarized with DiLu method');
figure; imshow(GT); title('Ground truth');
