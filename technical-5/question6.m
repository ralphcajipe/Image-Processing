%{
Add Gaussian noise to the greyscale image from flowers.tif
with the following parameters:
a) mean = 0, variance = 0.01 (default),
b) mean = 0, variance = 0.02,
c) mean = 0, variance = 0.05
d) mean = 0, variance = 0.1

In each case, attempt to remove the nouse with average filtering
and with Wiener filtering. 
%}

f = imread('flowers.tif');
fg = im2gray(f);
f = im2uint8(f(30:285, 60:315));

%% Add Gaussian noise to the greyscale image from flowers.tif
f1 = imnoise(f,'gaussian',0,0.01);
f2 = imnoise(f,'gaussian',0,0.02);
f3 = imnoise(f,'gaussian',0,0.05);
f4 = imnoise(f,'gaussian',0,0.1);

%% Average filtering
h = fspecial('average', 3);
f1_avg = imfilter(f1,h);
f2_avg = imfilter(f2,h);
f3_avg = imfilter(f3,h);
f4_avg = imfilter(f4,h);

%% Wiener filtering
f1_wiener = wiener2(f1,[3 3]);
f2_wiener = wiener2(f2,[3 3]);
f3_wiener = wiener2(f3,[3 3]);
f4_wiener = wiener2(f4,[3 3]);

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
subplot(2,2,1),imshow(f1),title('With Gaussian noise, mean = 0, variance = 0.01');
subplot(2,2,2),imshow(f1_avg),title('Average filtering');
subplot(2,2,3),imshow(f1_wiener),title('Wiener filtering');

figure('Name','Noise Reduction');
subplot(2,2,1),imshow(f2),title('With Gaussian noise, mean = 0, variance = 0.02');
subplot(2,2,2),imshow(f2_avg),title('Average filtering');
subplot(2,2,3),imshow(f2_wiener),title('Wiener filtering');

figure('Name','Noise Reduction');
subplot(2,2,1),imshow(f3),title('With Gaussian noise, mean = 0, variance = 0.05');
subplot(2,2,2),imshow(f3_avg),title('Average filtering'); 
subplot(2,2,3),imshow(f3_wiener),title('Wiener filtering'); 

figure('Name','Noise Reduction');
subplot(2,2,1),imshow(f4),title('With Gaussian noise, mean = 0, variance = 0.1');
subplot(2,2,2),imshow(f4_avg),title('Average filtering');
subplot(2,2,3),imshow(f4_wiener),title('Wiener filtering');

%{
Question: Can you produce satisfactory results with the last two noisy images?
Answer: No, the last two images are too noisy to be filtered.
This is because the variance is too high.
A high variance means that the noise is more spread out.
%}