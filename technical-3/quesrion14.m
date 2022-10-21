% Experiment with grayscale image
p = 0.5
ph = 0.5
figure, plot(p,ph,'.'), grid on
I = imread('peppers.png');
figure, imshow(I), colormap(gray)
figure, imshow(I), colormap(gray(256))