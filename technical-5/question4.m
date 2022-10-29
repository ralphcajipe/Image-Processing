%{
Write a MATLAB program:
Produce a grey sub-image of the image flowers.tif by using the following Matlab commands:

f = imread('flowers.tif');
fg = rgb2gray(f);
f = im2uint8(f(30:285, 60:315));

Then add 5% "salt and pepper" noise to the greyscal image.
Attempt to remove the noise with
a) averaging filtering
b) median filtering
c_ the outlier method

The results should be displayed in a single figure with 3 subplots including the name of the method used.
%}

f = imread('flowers.tif');
fg = im2gray(f);
f = im2uint8(f(30:285, 60:315));

%% Add 5% "salt and pepper" noise to the greyscal image.
f = imnoise(f,'salt & pepper',0.05);

%% Averaging filtering
f_avg = imfilter(f,fspecial('average',3));

%% Median filtering
f_med = medfilt2(f);

%% The outlier method
f_out = f;
for i = 2:size(f,1)-1
    for j = 2:size(f,2)-1
        if f(i,j) == 0
            f_out(i,j) = f(i-1,j-1);
        elseif f(i,j) == 255
            f_out(i,j) = f(i-1,j-1);
        end
    end
end

%% Display flowers.tif, the original image
figure('Name', 'Raw');
imshow('flowers.tif');
title('Raw flowers.tif');

%% Display the sub-image of flowers.tif
figure('Name', 'Sub-image');
imshow(fg);
title('Sub-image of flowers.tif');

%% Display the results
figure('Name','Noise Reduction');
subplot(2,2,1),imshow(f),title('With salt and pepper noise');
subplot(2,2,2),imshow(f_avg),title('Averaging Filtering');
subplot(2,2,3),imshow(f_med),title('Median Filtering');
subplot(2,2,4),imshow(f_out),title('Outlier Method');

% Question: Which method gives the best result?
% Answer: The outlier method gives the best result.
% The outlier method is the best because it removes the noise without blurring the image.
