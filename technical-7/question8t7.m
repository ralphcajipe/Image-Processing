%{
Write a MATLAB program that will perform the following tasks:

Create and view a random "patchwork quilt" with: 
r = uint8(floor(256*rand(16,16,3))); 
r = imresize(r,16); 
imshow(r), pixval on 

%}

r = uint8(floor(256*rand(16,16,3))); 
r = imresize(r,16); 
imshow(r), pixval on

% Convert the brown values to HSV, and plot the hues on a circle.
hsv = rgb2hsv(r); 
h = hsv(:,:,1); 
polarplot(h,ones(size(h)))

