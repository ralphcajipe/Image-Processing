% [T2-TECHNICAL] -Images and MATLAB
% Ralph Cajipe

% A MATLAB script for the following problem: %

%{
Part A, 1 
1. Type in the command. This will give you a list of, amongst other 
things, all the sample TIFF images which come with the Image Processing Toolbox.
%}
%help imdemos

% Make a list of the 10 sample images from technical-2/images directory
cd('C:\Users\xl38\Documents\MATLAB\technical-2\images')
%dir *.tif 
%dir *.jpg
%dir *.png

% Get the file names of the 10 sample images and store them in a cell array
% called 'files'
files = dir('*.tif');

% Append the other file extensions to the cell array
files = [files; dir('*.jpg'); dir('*.png')];

%{ 
For each image:
a) determine its type (binary, grayscale, true color, or indexed color),
b) determine its size (in pixels),
c) give  a brief description of the picture
%}

%{
Loop through the 10 sample images
for i = 1:length(files)
    % Read the image
    img = imread(files(i).name);
    
    % Determine the image type
    imgType = imfinfo(files(i).name).ColorType;
    
    % Determine the image size
    imgSize = size(img);
    
    % Print the index, image name, type, and size
    fprintf('%d %s is a %s image of size %d x %d', i, files(i).name, imgType, imgSize(2), imgSize(1))
    % Print a new line
    fprintf('\n')
end
%}

%{
fprintf('\n')

% Use `imfinfo` to view the image information of the 10 sample images
fprintf('Image information of the 10 sample images using `imfinfo` function:')
for i = 1:length(files)
    % Print the image information
    imfinfo(files(i).name)
end
%}

%{
Part A, 2
Pick a gteyscale image, say cameraman.tif. Using the imwrite function, 
write it to files of type JPEG, PNG, and BMP. Get the sizes of those files.
%}
% Read the image
img = imread('cameraman.tif');

% Write the image to JPEG, PNG, and BMP files
imwrite(img, 'cameraman.jpg')
imwrite(img, 'cameraman.png')
imwrite(img, 'cameraman.bmp')

% Get the file sizes of the JPEG, PNG, and BMP files
jpegSize = dir('cameraman.jpg');
pngSize = dir('cameraman.png');
bmpSize = dir('cameraman.bmp');

% Print the file sizes of the JPEG, PNG, and BMP files
fprintf('\nJPEG file size: %d bytes', jpegSize.bytes)
fprintf('\nPNG file size: %d bytes', pngSize.bytes)
fprintf('\nBMP file size: %d bytes', bmpSize.bytes)