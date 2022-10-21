%{
Write an informal code to calculate a histogram h[f] of the grey values of 
an image f[row][col]. 
%}

% I'll use 'cameraman.tif' as an example
f = imread('cameraman.tif');
[row, col] = size(f);
h = zeros(1,256);

for i = 1:row
    for j = 1:col
        h(f(i,j)+1) = h(f(i,j)+1) + 1;
    end
end

% Show the histogram
bar(h)



