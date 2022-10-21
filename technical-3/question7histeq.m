% Then perform a histogram equalization and draw the resulting histogram
histeq([zeros(1,3244),ones(1,3899),2*ones(1,4559),3*ones(1,2573), ...
    4*ones(1,1428),5*ones(1,530),6*ones(1,101),7*ones(1,50)],8)

title('Histogram of 0-7 grey values after histogram equalization')
xlabel('Grey Level')
ylabel('Number of Pixels')
axis([0 7 0 5000])

% Save the histogram as a .png file
print -dpng histogram_equalized.png