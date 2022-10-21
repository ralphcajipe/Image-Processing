%{
5. Try the same problem as in (4), but define m as:
%}

% Superimpose the image text.tif onto the image cameraman.tif. 
t = imread('text.tif');
c = imread('cameraman.tif');
m = uint8(double(c).*double(~t));

% Show the result
imshow(m);

% Save the superimposed image
imwrite(m,'q5superimposed.tif');

% Threshold this new image m to isolate the text
m = m>127;
imshow(m);

% Save the thresholded and isolated text version
imwrite(m,'q5isolated.tif');