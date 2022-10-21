%{
4. Can you threshold this new image m to isolate the text
%}

t = imread('text.tif');
c = imread('cameraman.tif');
m = uint8(double(c) + 255*double(t));

% Show the result
% imshow(m);

% Save the superimposed image
imwrite(m,'superimposed.tif');

% Threshold this new image m to isolate the text
m = m>127;
imshow(m);

% Save the thresholded and isolated text version
imwrite(m,'isolated.tif');