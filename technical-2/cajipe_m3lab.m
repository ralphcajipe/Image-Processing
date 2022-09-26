% [T2-TECHNICAL] -Images and MATLAB
% Ralph Cajipe

% A MATLAB script for the following problems: %

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
Pick a grayscale image, say cameraman.tif. Using the imwrite function, 
write it to files of type JPEG, PNG, and BMP. Get the sizes of those files.
%}
%{
Read the image
img = imread('cameraman.tif');

% Write the image to JPEG, PNG, and BMP files
imwrite(img, 'cameraman.jpg')
imwrite(img, 'cameraman.png')
imwrite(img, 'cameraman.bmp')

% Get the file sizes of the JPEG, PNG, and BMP files
jpegSize = dir('cameraman.jpg');
pngSize = dir('cameraman.png');
bmpSize = dir('cameraman.bmp');

% Print the file sizes (in pixels) and bytes of the JPEG, PNG, and BMP files
fprintf('\nJPEG file size: %d x %d pixels, %d bytes', size(img, 2), size(img, 1), jpegSize.bytes)
fprintf('\nPNG file size: %d x %d pixels, %d bytes', size(img, 2), size(img, 1), pngSize.bytes)
fprintf('\nBMP file size: %d x %d pixels, %d bytes\n', size(img, 2), size(img, 1), bmpSize.bytes)
%}

%{
Part A, 3
Look for a binary image, an indexed color image, a true color image from the files array; only one of each type.
For each image, use the imwrite function and write it to files of type JPEG, PNG, and BMP.

for i = 1:length(files)
    % Read the image
    img = imread(files(i).name);
    
    % Determine the image type
    imgType = imfinfo(files(i).name).ColorType;
    
    % Determine the image size
    imgSize = size(img);
    
    % Check if the image type is binary, indexed color, or true color
    if strcmp(imgType, 'grayscale') == 1 || strcmp(imgType, 'indexed') == 1 || strcmp(imgType, 'truecolor') == 1
        % Write the image to JPEG, PNG, and BMP files
        imwrite(img, strcat(files(i).name, '.jpg'))
        imwrite(img, strcat(files(i).name, '.png'))
        imwrite(img, strcat(files(i).name, '.bmp'))
        
        % Get the file sizes of the JPEG, PNG, and BMP files
        jpegSize = dir(strcat(files(i).name, '.jpg'));
        pngSize = dir(strcat(files(i).name, '.png'));
        bmpSize = dir(strcat(files(i).name, '.bmp'));
        
        % Print the file sizes (in pixels) and bytes of the JPEG, PNG, and BMP files
        fprintf('\nJPEG file size: %d x %d pixels, %d bytes', size(img, 2), size(img, 1), jpegSize.bytes)
        fprintf('\nPNG file size: %d x %d pixels, %d bytes', size(img, 2), size(img, 1), pngSize.bytes)
        fprintf('\nBMP file size: %d x %d pixels, %d bytes\n', size(img, 2), size(img, 1), bmpSize.bytes)
    end
end
%}

%{
Part B, 1
Open the greyscale image 'cameraman.tif' and view it.
Get the data type of the image.
%}
% Read the image
%{
img = imread('cameraman.tif');

% Determine the data type
dataType = class(img);

% Display the filename
fprintf('File: %s ', 'cameraman.tif')

% Print the data type
fprintf('Data type of the image: %s \n', dataType)
%}

%{
Part B, 2
Note: Use the `folowers.tif` instead of `emu.tif`
Enter the following commands:
%}
%{
[em, map] = imread('flowers.tif');
e = ind2gray(em, map);

% Write the image to a file
imwrite(e, 'grayscale_flowers.png')
fprintf("Successfully produced a grayscale image of type double. \nView this image.\n")
imshow(e)
%}

%{
Part B, 3
Enter the command
%}
%{
[em, map] = imread('flowers.tif');
e = ind2gray(em, map);

e2 = im2uint8(e);
imshow(e), figure, imshow(e2)
%}

%{
Part B, 3
What does the function im2uint8 do in MATLAB?
Answer: im2uint8 converts the image to an unsigned 8-bit integer image.

What effect does it have on:
(a) the appearance of the image?
Answer: The image is converted to an unsigned 8-bit integer image. The image is displayed in a different color scheme. 

(b) the elements of the image matrix? 
Answer: The elements of the image matrix are converted to unsigned 8-bit integers.
%}

%{
Part B, 4
What happens if you apply im2uint8 to the cameraman.tif image?
%}
%{
% Read the image
img = imread('cameraman.tif');

% Convert the image to an unsigned 8-bit integer image
img2 = im2uint8(img);

% Display the image
imshow(img2)
%}

%{
Part B, 5
Experiment with reducing spatial resolution of the following images:
(a) cameraman.tif
(b) The grayscale emu image
(c) blocks.tif
(d) buffalo.tif
%}

%{
cameraman = imread('cameraman.tif');
reduced_cameraman = imresize(imresize(img, 1/4), 4);
% 1/4 = 0.25 = 25% 
% 100% - 25% = 75%
fprintf('cameraman.tif spatial resolution reduced by 75%% \n')
imshow(reduced_cameraman);
%}

%{
[em, map]= imread('flowers.tif');
e = ind2gray(em, map);
reduced_flowers = imresize(imresize(e, 1/8), 8);
% 1/8 = 0.125 = 12.5%
% 100% - 12.5% = 87.5%
fprintf('flowers.tif spatial resolution reduced by 87.5%% \n')
imshow(reduced_flowers);
%}

%{
blocks = imread('blocks.tif');
reduced_blocks = imresize(imresize(blocks, 1/16), 16);
% 1/16 = 0.0625 = 6.25%
% 100% - 6.25% = 93.75%
fprintf('blocks.tif spatial resolution reduced by 93.75%% \n')
imshow(reduced_blocks);
%}

%{
buffalo = imread('buffalo.tif');
reduced_buffalo = imresize(imresize(buffalo, 1/32), 32);
fprintf('buffalo.tif spatial resolution reduced by 96.875%% \n')
% What is the correlation of 96.875% to 1/32, 32?
% 1/32 = 0.03125 = 3.125%
% 100% - 3.125% = 96.875% 
imshow(reduced_buffalo);
%}