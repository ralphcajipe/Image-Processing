%{
Apply different laplacian flters to the mandrill
image using imfilter.
%}
 
% Read the image
im = imread('mandrill.jpg');
 
% Create a laplacian filter
laplacian = [0 1 0; 1 -4 1; 0 1 0];
 
% Apply the laplacian filter to the image
im_laplacian = imfilter(im, laplacian);
 
% Display the image
figure(1), imshow(im), title('Original image');
figure(2), imshow(im_laplacian), title('Laplacian filtered image');
 
% Apply the laplacian filter to the image with
% different boundary options
im_laplacian_rep = imfilter(im, laplacian, 'replicate');
im_laplacian_sym = imfilter(im, laplacian, 'symmetric');
im_laplacian_cir = imfilter(im, laplacian, 'circular');
 
% Display the images
figure(3), imshow(im_laplacian_rep), title('Laplacian filtered image with replicate boundary options');
figure(4), imshow(im_laplacian_sym), title('Laplacian filtered image with symmetric boundary options');
figure(5), imshow(im_laplacian_cir), title('Laplacian filtered image with circular boundary options');
 
% Apply the laplacian filter to the image with
% different boundary options and different padding
im_laplacian_rep_pad = imfilter(im, laplacian, 'replicate', 'conv');
im_laplacian_sym_pad = imfilter(im, laplacian, 'symmetric', 'conv');
im_laplacian_cir_pad = imfilter(im, laplacian, 'circular', 'conv');
 
% Display the images
figure(6), imshow(im_laplacian_rep_pad), title('Laplacian filtered image with replicate boundary options and padding');
figure(7), imshow(im_laplacian_sym_pad), title('Laplacian filtered image with symmetric boundary options and padding');
figure(8), imshow(im_laplacian_cir_pad), title('Laplacian filtered image with circular boundary options and padding');
 

%{
Apply different filter2  to the mandrill image
%}
 
%% Read the image
I = imread('mandrill.jpg');
 
%% Create the filter2 and apply it to the image
h = fspecial('average', [5 5]);
J = imfilter(I, h);
 
%% Display the results
figure, imshow(I), title('Original Image');
figure, imshow(J), title('Filtered Image');
