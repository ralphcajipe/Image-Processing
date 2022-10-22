%{
Write a MATLAB script that will perform the following:

Obtain a greyscale image of a monkey (a mandrill) with the
following commands:
%}
load('mandrill.jpg');
map = gray(256);
m = im2uint8(ind2gray(X,map));

% Apply all the filters listed in question 1. What does each filter do?
% It turns out that the filters are all almost linear, so changes in the
% image are almost proportional to the changes in the filter.  This is not
% true for all filters, but it is true for the ones we are using here.
