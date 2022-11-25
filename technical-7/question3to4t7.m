%{
Write a MATLAB program that will perform the following tasks:

3-4. Perform the conversions between RGB column and HSV column or YIQ column, for the values: 

R       G      B       to  HSV 
===============================
0.5    0.5     0 
0      0.7     0.7 
0.5    0       0.5 

H      S   V       to  RGB
===============================
0.33  0.5  1 
0.67  0.7  0.7 
0     0.2  0.8 

R   G   B          to  YIQ 
===============================
0.3 0.3 0.7 
0.7 0.9 0 
0.8 0.8 0.7 

Y     I    Q       to  RGB
===============================
1    0.3 0.3 
0.5 0.5 0.5 
0     1   1   

You may need to normalize the RGB values. 

%}
%RGB to HSV
RGB = [0.5 0.5 0; 0 0.7 0.7; 0.5 0 0.5];
HSV = rgb2hsv(RGB);

%HSV to RGB
HSV = [0.33 0.5 1; 0.67 0.7 0.7; 0 0.2 0.8];
RGB = hsv2rgb(HSV);

%RGB to YIQ
RGB = [0.3 0.3 0.7; 0.7 0.9 0; 0.8 0.8 0.7];
YIQ = rgb2ntsc(RGB);

%YIQ to RGB
YIQ = [1 0.3 0.3; 0.5 0.5 0.5; 0 1 1];
RGB = ntsc2rgb(YIQ);

% Display the results
disp('RGB to HSV');
disp(HSV);

disp('HSV to RGB');
disp(RGB);

disp('RGB to YIQ');
disp(YIQ);

disp('YIQ to RGB');
disp(RGB);
