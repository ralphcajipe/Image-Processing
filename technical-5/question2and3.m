%{
Using the small grayscale images, transform them using 3 x 3 averaging filter.
%}

clear all;
close all;

% First array:
A = [
    8 17 4 10 15 12;
    10 12 15 7 3 10;
    15 10 50 5 3 12;
    4 8 11 4 1 8;
    16 7 4 3 0 7;
    16 24 19 3 20 10
    ];

% Second array:
B = [
    1 1 2 5 3 1;
    3 20 5 6 4 6;
    4 6 4 20 2 2;
    4 3 3 5 1 5;
    6 5 20 2 20 2;
    6 3 1 4 1 2
    ];

% Third array:
C = [
    7 8 11 12 13 9;
    8 14 0 9 7 10;
    11 23 10 14 1 8;
    14 7 11 8 9 11;
    13 13 18 10 7 12;
    9 11 14 12 13 10
    ];

% First array after averaging filter:
A = filter2(fspecial('average', 3), A)/255;

% Second array after averaging filter:
B = filter2(fspecial('average', 3), B)/255;

% Third array after averaging filter:
C = filter2(fspecial('average', 3), C)/255;

% Displaying the arrays
disp(A);
disp(B);
disp(C);

% Displaying the arrays
figure;
subplot(3,2,1), imshow(A);
subplot(3,2,2), imshow(B);
subplot(3,2,3), imshow(C);

%{
Question: What is the effect of the averaging filter on the images?
Answer: The effect of the averaging filter on the images is that it removes 
the noise from the images.

- Compare the results from 1 and 2. -
Answer: Averaging filter differs from the median filter 
in that it takes the average of the pixels in the filter.
The median filter takes the median of the pixels in the filter.
%}