%{
Write a MATLAB script that will perform the following:

Apply Gaussian filters to mandrill.jpg with the following
parameters:

Size:
[3,3] with standard deviation of 0.5 1 2
[7,7] with standard deviation of 1 3 6
[11,11] with standard deviation of 1 4 8
[21,21] with standard deviation of 1 5 10
%}

%% Load image
img = imread('mandrill.jpg');

%% Apply Gaussian filters
g3_05 = imgaussfilt(img, 0.5, 'FilterSize', [3 3]);
g3_1 = imgaussfilt(img, 1, 'FilterSize', [3 3]);
g3_2 = imgaussfilt(img, 2, 'FilterSize', [3 3]);
g7_1 = imgaussfilt(img, 1, 'FilterSize', [7 7]);
g7_3 = imgaussfilt(img, 3, 'FilterSize', [7 7]);
g7_6 = imgaussfilt(img, 6, 'FilterSize', [7 7]);
g11_1 = imgaussfilt(img, 1, 'FilterSize', [11 11]);
g11_4 = imgaussfilt(img, 4, 'FilterSize', [11 11]);
g11_8 = imgaussfilt(img, 8, 'FilterSize', [11 11]);
g21_1 = imgaussfilt(img, 1, 'FilterSize', [21 21]);
g21_5 = imgaussfilt(img, 5, 'FilterSize', [21 21]);
g21_10 = imgaussfilt(img, 10, 'FilterSize', [21 21]);

%% Display images
figure;
subplot(3,4,1);
imshow(img);
title('Original Image');
subplot(3,4,2);
imshow(g3_05);

title('Gaussian Filter: [3,3] with standard deviation of 0.5');
subplot(3,4,3);
imshow(g3_1);
title('Gaussian Filter: [3,3] with standard deviation of 1');
subplot(3,4,4);
imshow(g3_2);
title('Gaussian Filter: [3,3] with standard deviation of 2');
subplot(3,4,5);
imshow(g7_1);

title('Gaussian Filter: [7,7] with standard deviation of 1');
subplot(3,4,6);
imshow(g7_3);
title('Gaussian Filter: [7,7] with standard deviation of 3');
subplot(3,4,7);
imshow(g7_6);
title('Gaussian Filter: [7,7] with standard deviation of 6');
subplot(3,4,8);
imshow(g11_1);

title('Gaussian Filter: [11,11] with standard deviation of 1');
subplot(3,4,9);
imshow(g11_4);
title('Gaussian Filter: [11,11] with standard deviation of 4');
subplot(3,4,10);
imshow(g11_8);
title('Gaussian Filter: [11,11] with standard deviation of 8');
subplot(3,4,11);
imshow(g21_1);

title('Gaussian Filter: [21,21] with standard deviation of 1');
subplot(3,4,12);
imshow(g21_5);
title('Gaussian Filter: [21,21] with standard deviation of 5');
subplot(3,4,13);
imshow(g21_10);
title('Gaussian Filter: [21,21] with standard deviation of 10');
