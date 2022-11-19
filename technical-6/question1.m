%{
Write a MATLAB program that will perform the following tasks:

1. Enter the following matrix into MATLAB:
201 195 203 203 199 200 204 190 198 203 
201 204 209 197 210 202 205 195 202 199 
205 198 46 60 53 37 50 51 194 205 
208 203 54 50 51 50 55 48 193 194 
200 193 50 56 42 53 55 49 196 211 
200 198 203 49 51 60 51 205 207 198 
205 196 202 53 52 34 46 202 199 193 
199 202 194 47 51 55 48 191 190 197 
194 206 198 212 195 196 204 204 199 200 
201 189 203 200 191 196 207 203 193 204 
%}
A = [
    201 195 203 203 199 200 204 190 198 203; 
    201 204 209 197 210 202 205 195 202 199; 
    205 198 46 60 53 37 50 51 194 205; 
    208 203 54 50 51 50 55 48 193 194; 
    200 193 50 56 42 53 55 49 196 211; 
    200 198 203 49 51 60 51 205 207 198; 
    205 196 202 53 52 34 46 202 199 193; 
    199 202 194 47 51 55 48 191 190 197; 
    194 206 198 212 195 196 204 204 199 200; 
    201 189 203 200 191 196 207 203 193 204];

%% Print the matrix to the screen
A

%{
Using the imfilter, apply Roberts, Prewitt, Sobel, Laplacian, 
and Zero-crossing edge finding methods to the image. 
Apply thresholding if necessary to obtain a binary image showing only the edges.
%}
% Roberts
roberts = [1, 0; 0, -1]; 
roberts = imfilter(A, roberts);

% Prewitt
prewitt = [-1, -1, -1; 0, 0, 0; 1, 1, 1];
prewitt = imfilter(A, prewitt);

% Sobel
sobel = [-1, -2, -1; 0, 0, 0; 1, 2, 1];
sobel = imfilter(A, sobel);

% Laplacian
laplacian = [0, 1, 0; 1, -4, 1; 0, 1, 0];
laplacian = imfilter(A, laplacian);

% Zero-crossing
zero_crossing = edge(A, 'zerocross');

%{
Display the results of each edge detection method in separate windows 
and label each window with the name of the method.
%}
figure(1)
imshow(roberts, [])
title('Roberts')

figure(2)
imshow(prewitt, [])
title('Prewitt')

figure(3)
imshow(sobel, [])
title('Sobel')

figure(4)
imshow(laplacian, [])
title('Laplacian')

figure(5)
imshow(zero_crossing, [])
title('Zero-crossing')

%% Question: Which seems to produce the best result?
%% Answer: The Prewitt and Sobel methods give the best results because there’s a 
%% hint that the two are trying to display a pixelated boxman character.