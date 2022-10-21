%{
The following table gives the number of pixels at each of the 
grey levels 0-7 in an image with those grey values only: 

  0    1    2    3    I   5   6   7 
------------------------------------
3244 3899 4559 2573 1428 530 101 50 
%}

% Draw the histogram corresponding to these grey levels
hist([zeros(1,3244),ones(1,3899),2*ones(1,4559),3*ones(1,2573), ...
    4*ones(1,1428),5*ones(1,530),6*ones(1,101),7*ones(1,50)],0:7)

title('Histogram of 0-7 grey values')
xlabel('Grey Level')
ylabel('Number of Pixels')
axis([0 7 0 5000])

% Save the histogram as a .png file
print -dpng histogram.png
