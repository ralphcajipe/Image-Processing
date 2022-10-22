%{
Write a MATLAB script that will perform the following:

Using fspecial function, apply different laplacian filters
to the cameraman.tif image, and to the mandrill.jpg image.
Which produces the best edge image? Why?
%}

%% Read in the images
cameraman = imread('cameraman.tif');
mandrill = imread('mandrill.jpg');

%% Apply the filters
cameraman_laplacian = fspecial('laplacian');
cameraman_filtered = imfilter(cameraman, cameraman_laplacian);

mandrill_laplacian = fspecial('laplacian');
mandrill_filtered = imfilter(mandrill, mandrill_laplacian);


%% Display the results
figure(1);
subplot(2,2,1);
imshow(cameraman);
title('Cameraman');
subplot(2,2,2);
imshow(cameraman_filtered);
title('Cameraman Filtered');
subplot(2,2,3);
imshow(mandrill);
title('Mandrill');
subplot(2,2,4);
imshow(mandrill_filtered);
title('Mandrill Filtered');

%{
The filtered image of the mandrill is better because the mandrill's
edges are more defined and sharper than the cameraman's.
%}