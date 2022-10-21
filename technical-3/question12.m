% Create a dark image

c = imread('cameraman.tif');
[x, map] = gray2ind(c);

% Display the dark image
figure
image(x)
colormap(map)
axis image
title('Dark Image')

%{
Apply histogram equalization to the dark image,
and show the the equalized image and original image side by side in one figure.
%}
figure
subplot(1,2,1)
image(histeq(x))
colormap(map)
axis image
title('Equalized Image')

subplot(1,2,2)
image(x)
colormap(map)
axis image
title('Original Image')