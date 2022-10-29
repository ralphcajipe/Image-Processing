%{
Write a MATLAB program:
The arrays below represent small grayscale images.
Compute the 4 x 4 image that would result in each
case if the middle 16 pixels were transformed using a
3 x3 median filter:

First array:
8 17 4 10 15 12
10 12 15 7 3 10
15 10 50 5 3 12
4  8 11 4 1 8
16 7 4 3 0 7
16 24 19 3 20 10

Second array:
1 1 2 5 3 1
3 20 5 6 4 6
4 6 4 20 2 2
4 3 3 5 1 5
6 5 20 2 20 2
6 3 1 4 1 2

Third array:
 7 8 11 12 13 9
 8 14 0 9 7 10
 11 23 10 14 1 8
 14 7 11 8 9 11
 13 13 18 10 7 12
 9 11 14 12 13 10
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

% First array after median filter:
A = medfilt2(A, [3 3]);

% Second array after median filter:
B = medfilt2(B, [3 3]);

% Third array after median filter:
C = medfilt2(C, [3 3]);

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
Question: What is the effect of the median filter on the images?

Answer: The effect of the median filter on the images is that it 
removes the noise from the images.
%}