%{
Write a MATLAB program that will perform the following tasks:

Open the image cameraman.tif iand apply each of the following techniques:

1. Roberts
2. Prewitt
3. Sobel
4. Laplacian
5. Zero-crossings of Laplacian
6. Mar-Hildreth Method
%}

% Read the image
I = imread('cameraman.tif');

% Convert the image to double
I = im2double(I);

% Apply the Roberts Operator
roberts = edge(I, 'roberts');

% Apply the Prewitt Operator
prewitt = edge(I, 'prewitt');

% Apply the Sobel Operator
sobel = edge(I, 'sobel');

% Apply the Laplacian Operator
laplacian = edge(I, 'log');

% Apply the Zero-crossings of Laplacian Operator
zerocross = edge(I, 'zerocross');

% Apply the Mar-Hildreth Method
marhildreth = edge(I, 'log');


% Display the results
figure;
subplot(3,3,1), imshow(I), title('Original Image');
subplot(3,3,2), imshow(roberts), title('Roberts');
subplot(3,3,3), imshow(prewitt), title('Prewitt');
subplot(3,3,4), imshow(sobel), title('Sobel');
subplot(3,3,5), imshow(laplacian), title('Laplacian');
subplot(3,3,6), imshow(zerocross), title('Zero-crossings of Laplacian');
subplot(3,3,7), imshow(marhildreth), title('Mar-Hildreth Method');
