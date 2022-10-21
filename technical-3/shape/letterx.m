%{
MATLAB Thresholding:

Create a small image that produces an 'X' shape when thresholded at level 100,
by using two different colors to create the shapes.
The 'X' could be created by using a dark color for the top and 
bottom lines and a light color for the left and right lines.
%}

% Create a 100x100 image of zeros
img = zeros(100,100);

% Set the top and bottom lines to 255
img(1:50, 50) = 255;
img(51:100, 50) = 255;

% Set the left and right lines to 255
img(50, 1:50) = 255;
img(50, 51:100) = 255;

% Set the white color to be thick
img = imdilate(img, strel('disk', 5));

% Display the image
imshow(img);

% Threshold the image at level 100
img(img < 100) = 0;
img(img >= 100) = 255;

% Rotate the image to make the X horizontal
img = imrotate(img, 45);

% Display the thresholded image
imshow(img);

% Save the image
imwrite(img, 'letterx.png');