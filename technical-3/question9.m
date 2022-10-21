%{
The following small image has gray values in the range of 0 to 19. 
Compute the gray level histogram and the mapping that will equalize this histogram. 

12  6   5   13  14  14  16  15 
11 10   8    5   8  11  14  14 
 9  8   3    4   7  12  18  19 
10  7   4    2  10  12  13  17 
16  9  13   13  16  19  19  17 
12 10  14   15  18  18  16  14 
11  8  10   12  14  13  14  15 
8   6   3    7   9  11  12  12 
%}

figure1 = figure;
hist([12  6   5   13  14  14  16  15;
11 10   8    5   8  11  14  14; 
 9  8   3    4   7  12  18  19; 
10  7   4    2  10  12  13  17; 
16  9  13   13  16  19  19  17; 
12 10  14   15  18  18  16  14; 
11  8  10   12  14  13  14  15; 
8   6   3    7   9  11  12  12])

axis([0 20 0 20])
title('Histogram of the image')
xlabel('Gray level')
ylabel('Number of pixels')

% Then perform a histogram equalization and draw the resulting histogram
figure2 = figure;
histeq([12  6   5   13  14  14  16  15;
11 10   8    5   8  11  14  14; 
 9  8   3    4   7  12  18  19; 
10  7   4    2  10  12  13  17; 
16  9  13   13  16  19  19  17; 
12 10  14   15  18  18  16  14; 
11  8  10   12  14  13  14  15; 
8   6   3    7   9  11  12  12])

axis([0 20 0 20])
title('Histogram of the equalized image')
xlabel('Gray level')
ylabel('Number of pixels')

% Produce an 8 x 8 grid containing the grey values for the new histogram-equalized image. 
% The values should be integers in the range 0 to 19.
figure3 = figure;
histeq([12  6   5   13  14  14  16  15;
11 10   8    5   8  11  14  14; 
 9  8   3    4   7  12  18  19;
10  7   4    2  10  12  13  17;
16  9  13   13  16  19  19  17;
12 10  14   15  18  18  16  14;
11  8  10   12  14  13  14  15;
8   6   3    7   9  11  12  12])

axis([0 20 0 20])
title('Histogram of the equalized image')
xlabel('Gray level')
ylabel('Number of pixels')
