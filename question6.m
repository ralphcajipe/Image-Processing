%{
Write a MATLAB script that will perform the following:

Apply five larger averaging filters to mandrill.jpg. 
What is the smallest sized filter for which the whiskers of the moandrill cannot be seen?
%}

%% Read in image
mandrill = imread('mandrill.jpg');

%% Apply 5 larger averaging filters
% 1st filter
mandrill1 = imfilter(mandrill, fspecial('average', 5));

% 2nd filter
mandrill2 = imfilter(mandrill, fspecial('average', 10));

% 3rd filter
mandrill3 = imfilter(mandrill, fspecial('average', 15));

% 4th filter
mandrill4 = imfilter(mandrill, fspecial('average', 20));

% 5th filter
mandrill5 = imfilter(mandrill, fspecial('average', 25));

%% Display images
figure(1)
subplot(2,3,1)
imshow(mandrill)
title('Original Image')

subplot(2,3,2)
imshow(mandrill1)
title('1st Filter')

subplot(2,3,3)
imshow(mandrill2)
title('2nd Filter')

subplot(2,3,4)
imshow(mandrill3)
title('3rd Filter')

subplot(2,3,5)
imshow(mandrill4)
title('4th Filter')

subplot(2,3,6)
imshow(mandrill5)
title('5th Filter')

