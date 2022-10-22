%{
Write a MATLAB script that will perform the following:

Using fspecial function, apply some of the other filters
to the cameraman.tif image, and to the mandrill.jpg image.
%}
%% Read in the images
Cameraman = imread('cameraman.tif');
Mandrill = imread('mandrill.jpg');

%% Apply the filters
CameramanFilter = fspecial('average', 5);
CameramanFiltered = imfilter(Cameraman, CameramanFilter);

MandrillFilter = fspecial('disk', 10);
MandrillFiltered = imfilter(Mandrill, MandrillFilter);

%% Display the results
figure;
subplot(1, 2, 1);
imshow(Cameraman);
title('Original Cameraman Image');
subplot(1, 2, 2);
imshow(CameramanFiltered);
title('Filtered Cameraman Image');

figure;
subplot(1, 2, 1);
imshow(Mandrill);
title('Original Mandrill Image');
subplot(1, 2, 2);
imshow(MandrillFiltered);
title('Filtered Mandrill Image');

%% Save the results
imwrite(CameramanFiltered, 'CameramanFiltered.jpg');
imwrite(MandrillFiltered, 'MandrillFiltered.jpg');