%{
Apply different sized averaging flters to the mandrill
image using imfilter.
%}

% Read the image
I = imread('mandrill.jpg');

% Create the averaging flters
h1 = fspecial('average', 3);
h2 = fspecial('average', 5);
h3 = fspecial('average', 7);

% Apply the averaging flters
J1 = imfilter(I, h1);
J2 = imfilter(I, h2);
J3 = imfilter(I, h3);

% Display the images
figure, imshow(I), title('Original');
figure, imshow(J1), title('Filtered with h1');
figure, imshow(J2), title('Filtered with h2');
figure, imshow(J3), title('Filtered with h3');

