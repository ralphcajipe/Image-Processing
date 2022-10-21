%{
4. Superimpose the image text.tif onto the image cameraman.tif. 
%}

t = imread('text.tif');
c = imread('cameraman.tif');
m = uint8(double(c) + 255*double(t));

% Show the result
imshow(m);

% Save the superimposed image
imwrite(m,'superimposed.tif');