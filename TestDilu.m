%% Lu2018 method

% This script implements a complex alogrithm found in recent literature.
% This algorithm was proposed by Lu2018
% Binarization of degraded document images based on contrast enhancement

clc;close all;clear;

% Crucial unique parameters
k1 = 0.2;  % variation range [0 0.4]
k2 = 1.3;  % variation range [0.7 1]

%% Loading images

im = imread('PR1.png'); imshow(im); title('Original document image');
GT = imread('PR1_GT.tiff');

%% Binarize document

imBin = DiLu(im,k1,k2);
figure; imshow(imBin); title('Binarized with DiLu method');
figure; imshow(GT); title('Ground truth');
