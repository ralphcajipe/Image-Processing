%{
The following table gives the number of pixels at each of the 
gray levels 0-15 or (16) in an image with those gray values only: 

0   1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 
-----------------------------------------------
20 40 60 75 80 75 65 55 50 45 40 35 30 25 20 30  
%}

% Draw the histogram corresponding to these gray levels

figure(1)
hist([zeros(1,20) ones(1,40) 2*ones(1,60) 3*ones(1,75), ...
 4*ones(1,80) 5*ones(1,75) 6*ones(1,65) 7*ones(1,55) 8*ones(1,50), ...
  9*ones(1,45) 10*ones(1,40) 11*ones(1,35) 12*ones(1,30) 13*ones(1,25), ...
   14*ones(1,20) 15*ones(1,30)],15)

axis([0 15 0 80])
title('Histogram of the grey levels 0-15 in an image')
xlabel('Gray level')
ylabel('Number of pixels')

% Save the histogram as a .png file
print -dpng q8ahistogram.png

% Then perform a histogram equalization and draw the resulting histogram
histeq([zeros(1,20) ones(1,40) 2*ones(1,60) 3*ones(1,75), ...
 4*ones(1,80) 5*ones(1,75) 6*ones(1,65) 7*ones(1,55) 8*ones(1,50), ...
  9*ones(1,45) 10*ones(1,40) 11*ones(1,35) 12*ones(1,30) 13*ones(1,25), ...
   14*ones(1,20) 15*ones(1,30)],15)

title('Histogram of the grey levels 0-15 in an image after histogram equalization')
xlabel('Gray level')
ylabel('Number of pixels')
axis([0 15 0 80])

% Save the histogram as a .png file
print -dpng q8ahistogramEqualized.png