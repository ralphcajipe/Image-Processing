%{
Apply histogram equalization to the indices of the image emu.tif.
%}

% Read image into workspace.
I = imread('emu.tif');

% Display original image.
subplot(2,2,1);
imshow(I);
title('Original Image');

% Display histogram of original image.
subplot(2,2,2);
imhist(I);
title('Histogram of Original Image');

% Apply histogram equalization to image.
J = histeq(I);

% Display histogram equalized image.
subplot(2,2,3);
imshow(J);
title('Histogram Equalized Image');

% Display histogram of histogram equalized image.
subplot(2,2,4);
imhist(J);
title('Histogram of Histogram Equalized Image');

% Display the image and the histogram side by side.
figure;
subplot(1,2,1);
imshow(I);
title('Original Image');
subplot(1,2,2);
imhist(I);
title('Histogram of Original Image');

% Display the histogram equalized image and the histogram.
figure;
subplot(1,2,1);
imshow(J);
title('Histogram Equalized Image');
subplot(1,2,2);
imhist(J);
title('Histogram of Histogram Equalized Image');

% Display the original and histogram equalized images in one figure.
figure;
subplot(1,2,1);
imshow(I);
title('Original Image');
subplot(1,2,2);
imshow(J);
title('Histogram Equalized Image');