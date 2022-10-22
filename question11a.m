%{
Write a MATLAB script that will perform the following:

Use imfilter on mandrill.png with a 3x3 averaging filter. Display the result.
%}

%% Load image
img = imread('mandrill.png');

%% Create filter
filter = ones(3,3)/9;

%% Apply filter
img_filtered = imfilter(img, filter);

%% Display result
imshow(img_filtered);

