%{
Write a Matlab script that will perform the following:

The array below represents a small greyscale image. 
Compute the images that result when the image is convolved with each of the masks from (a) to (h). 
At the edge of the image use a restricted mask. In other words, pad the image with zeroes.

20 20 20 10 10 10 10 10 10 
20 20 20 20 20 20 20 20 10 
20 20 20 10 10 10 10 20 10 
20 20 10 10 10 10 10 20 10 
20 10 10 10 10 10 10 20 10 
10 10 10 10 20 10 10 20 10 
10 10 10 10 10 10 10 10 10 
20 10 20 20 10 10 10 20 20 
20 10 10 20 10 10 20 10 20 
%}
function [ ] =  convolve( )
    %UNTITLED2 Summary of this function goes here
    %   Detailed explanation goes here
    img = [20 20 20 10 10 10 10 10 10; 20 20 20 20 20 20 20 20 10; 20 20 20 10 10 10 10 20 10; 20 20 10 10 10 10 10 20 10; 20 10 10 10 10 10 10 20 10; 10 10 10 10 20 10 10 20 10; 10 10 10 10 10 10 10 10 10; 20 10 20 20 10 10 10 20 20; 20 10 10 20 10 10 20 10 20];
    disp('Original image');
    disp(img);
    %a
    a = [0 0 0; 0 1 0; 0 0 0];
    disp('a = [0 0 0; 0 1 0; 0 0 0]');
    b = conv2(img,a , 'same' );
    disp(b);
    %b
    b = [0 0 0; 0 1 1; 0 0 0];
    disp('b = [0 0 0; 0 1 1; 0 0 0]');
    b = conv2(img,b , 'same' );
    disp(b);
    %c
    c = [0 0 0; 0 1 0; 0 1 0];
    disp('c = [0 0 0; 0 1 0; 0 1 0]');
    b = conv2(img,c , 'same' );
    disp(b);
    %d
    d = [0 0 0; 0 1 0; 0 0 1];
    disp('d = [0 0 0; 0 1 0; 0 0 1]');
    b = conv2(img,d , 'same' );
    disp(b);
    %e
    e = [0 0 0; 0 1 0; 1 0 0];
    disp('e = [0 0 0; 0 1 0; 1 0 0]');
    b = conv2(img,e , 'same' );
    disp(b);
    %f
    f = [0 0 0; 1 1 0; 0 0 0];
    disp('f = [0 0 0; 1 1 0; 0 0 0]');
    b = conv2(img,f , 'same' );
    disp(b);
    %g
    g = [0 0 1; 0 1 0; 0 0 0];
    disp('g = [0 0 1; 0 1 0; 0 0 0]');
    b = conv2(img,g , 'same' );
    disp(b);
    %h
    h = [1 0 0; 0 1 0; 0 0 0];
    disp('h = [1 0 0; 0 1 0; 0 0 0]');
    b = conv2(img,h , 'same' );
    disp(b);
end

%{
Describe what each of the masks does to the image and might be used for.

Each of the masks is a 3x3 matrix. 
The masks are used to convolve the image with. This simply means that the image is multiplied by the mask.
The masks are used to detect edges in the image. 
The masks are used to detect horizontal, vertical, and diagonal edges in the image. 
The masks are used to detect the direction of the edge in the image. 
%}