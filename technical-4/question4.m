%{
Write a MATLAB script that will perform the following:

Devise a 3 x 3 mask for an "indentity filter"; which causes no change in the image.
%}

% Load the image
f = imread('cameraman.tif');

% Create a 3x3 identity filter
h = [0 0 0; 0 1 0; 0 0 0];

% Apply the filter to the image and display the result
g = imfilter(f, h);

figure(1);
subplot(1,2,1); imshow(f); title('Original Image');
subplot(1,2,2); imshow(g); title('Filtered Image');