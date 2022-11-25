%{
Write a MATLAB program that will perform the following tasks:

Threshold the intensity component of a colour image, say flowers.tif.
Threshold in a way that the background is black and the flower is white.

%}

% Read the image
I = imread('flowers.tif');

% Convert to grayscale
I = rgb2gray(I);

% Threshold the image
level = graythresh(I);
BW = im2bw(I,level);

% Display the image
figure
imshow(BW)

