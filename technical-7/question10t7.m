%{
10. Write a MATLAB program that will perform the following tasks:

Add Gaussian noise to an RGB color image x with
xn = imnoise(x,'gaussian'); 

View your image, and attempt to remove the noise with 
(a) average filtering on each RGB component
(b) Wiener filtering on each RGB component

%}

% Load the image
x = imread('mandrill.jpg');

% Add Gaussian noise to the image
xn = imnoise(x,'gaussian');

% Display the original and noisy image
figure(1);
subplot(1,2,1);
imshow(x);
title('Original Image');
subplot(1,2,2);
imshow(xn);
title('Noisy Image');

% Average filtering on each RGB component
R = xn(:,:,1);
G = xn(:,:,2);
B = xn(:,:,3);
Ravg = filter2(fspecial('average',3),R)/255;
Gavg = filter2(fspecial('average',3),G)/255;
Bavg = filter2(fspecial('average',3),B)/255;
xavg = cat(3,Ravg,Gavg,Bavg);

% Wiener filtering on each RGB component
Rw = wiener2(R,[3 3]);
Gw = wiener2(G,[3 3]);
Bw = wiener2(B,[3 3]);
xw = cat(3,Rw,Gw,Bw);

% Display the filtered images
figure(2);
subplot(2,2,1);
imshow(xn);
title('Noisy Image');
subplot(2,2,2);
imshow(xavg);
title('Average Filtered Image');
subplot(2,2,3);
imshow(xn);
title('Noisy Image');
subplot(2,2,4);
imshow(xw);
title('Wiener Filtered Image');


