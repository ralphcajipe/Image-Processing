%{
Write a MATLAB program that will perform the following tasks:

Pick a greyscale image, and add noise to it.

c = imread('cameraman.tif');
c1 = imnoise(c, 'salt & pepper', 0.1);
c2 = imnoise(c, 'gaussian', 0, 0.02);
%}
c = imread('cameraman.tif');
c1 = imnoise(c, 'salt & pepper', 0.1);
c2 = imnoise(c, 'gaussian', 0, 0.02);

% Now apply the edge finding techniques to each of the noisy images c1 and c2.
c1_sobel = edge(c1, 'sobel');
c1_prewitt = edge(c1, 'prewitt');
c1_roberts = edge(c1, 'roberts');
c1_canny = edge(c1, 'canny');

c2_sobel = edge(c2, 'sobel');
c2_prewitt = edge(c2, 'prewitt');
c2_roberts = edge(c2, 'roberts');
c2_canny = edge(c2, 'canny');

% Now display the results in a grid.

subplot(2, 2, 1), imshow(c1_sobel), title('Sobel');
subplot(2, 2, 2), imshow(c1_prewitt), title('Prewitt');
subplot(2, 2, 3), imshow(c1_roberts), title('Roberts');
subplot(2, 2, 4), imshow(c1_canny), title('Canny');

subplot(2, 2, 1), imshow(c2_sobel), title('Sobel');
subplot(2, 2, 2), imshow(c2_prewitt), title('Prewitt');
subplot(2, 2, 3), imshow(c2_roberts), title('Roberts');
subplot(2, 2, 4), imshow(c2_canny), title('Canny');
