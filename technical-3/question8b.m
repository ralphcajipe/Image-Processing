%{
The following table gives the number of pixels at each of the 
gray levels 0-15 or (16) in an image with those gray values only: 

0 1  2  3  4  5   6 7 8 9 10 11 12 13 14 15
-------------------------------------------
0 0 40 80 45 110 70 0 0 0  0  0  0  0  0 15 
%}

% Draw the histogram corresponding to these gray levels
figure(1);
g = [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15];
h = [0 0 40 80 45 110 70 0 0 0 0 0 0 0 0 15];
bar(g,h);
xlabel('Gray level');
ylabel('Number of pixels');
title('Histogram of an image with 16 gray levels');

axis([0 15 0 120]);
title('Histogram of an image with 16 gray levels');
xlabel('Gray level');
ylabel('Number of pixels');

% Save the histogram as a .png file
print -dpng q8bhistogram.png

% Then perform a histogram equalization and draw the resulting histogram
figure(2);
histeq(g,h);
axis([0 15 0 120]);
title('Histogram of an image after histogram equalization');
xlabel('Gray level');
ylabel('Number of pixels');

% Save the histogram as a .png file
print -dpng q8bhistequalized.png