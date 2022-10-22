%{
Display the difference between the cmax and cmin images.
%}

% Use a sample image 
I = imread('mandrill.jpg');

cmax = imadjust(I,[],[],0.5);
cmin = imadjust(I,[],[],2);

imshow(imsubtract(cmax,cmin))

%{
I am seeing a difference between the cmax and cmin images. This means that
the contrast is being adjusted. The cmax image is lighter and the cmin image is darker. 
%}