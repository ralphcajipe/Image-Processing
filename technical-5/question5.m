%{
Use the grey image from flowers.tif, but with 20% ‘salt & pepper’ noise. 
Compare the results with 5 x 5 median filter, and two applications of a 3 x 3 median filter. 
%}
f = imread('flowers.tif');
fg = im2gray(f);
f = im2uint8(f(30:285, 60:315));

%% Add 20% "salt and pepper" noise to the greyscal image.
f = imnoise(f,'salt & pepper',0.20);

%% 5 x 5 median filter
f_med = medfilt2(f,[5 5]);

%% Two applications of a 3 x 3 median filter
f_med1 = medfilt2(f,[3 3]);
f_med2 = medfilt2(f_med1,[3 3]);

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
subplot(2,2,2),imshow(f_med),title('5 x 5 median filter');
subplot(2,2,3),imshow(f_med1),title('Two applications of a 3 x 3 median filter');
subplot(2,2,4),imshow(f_med2),title('Two applications of a 3 x 3 median filter');

%{
Question: Compare the results with 5 x 5 median filter, and two applications of a 3 x 3 median filter. 
Which of the two produced a better result?

Answer: The two applications of a 3 x 3 median filter produced a better result.
This is because the 5 x 5 median filter is too large and it removes too much detail
while the 3 x 3 median filter is small enough to remove the noise without removing too much detail.
%}