%{
Thresholding in MATLAB

1. Consider the following 8 x8 image:

3 148 117 148 145 178 132 174 
2 176 174 110 185 155 118 165 
0 100 124 113 193 136 146 108 
0 155 170 106 158 130 178 170 
9 196 138 113 108 127 144 139 
6 188 143 183 137 162 105 169 
9 122 156 119 188 179 100 151 
8 176 137 114 135 123 134 183 

Threshold is at
a) level 100
b) level 150
%}

% Increase the threshold level to 100 and display the result of the 8 x 8 matrix. Code below:
A = [
    3 148 117 148 145 178 132 174; 
    2 176 174 110 185 155 118 165; 
    0 100 124 113 193 136 146 108; 
    0 155 170 106 158 130 178 170; 
    9 196 138 113 108 127 144 139; 
    6 188 143 183 137 162 105 169; 
    9 122 156 119 188 179 100 151; 
    8 176 137 114 135 123 134 183
    ];
disp("Threshold is at level 100");
threshold = 100;
A(A<threshold) = 0;
A(A>=threshold) = 1;
disp(A);

% New line
disp(" ");

% Increase the threshold level to 150 and display the result of the 8 x 8 matrix. Code below:
A = [
    3 148 117 148 145 178 132 174; 
    2 176 174 110 185 155 118 165; 
    0 100 124 113 193 136 146 108; 
    0 155 170 106 158 130 178 170; 
    9 196 138 113 108 127 144 139; 
    6 188 143 183 137 162 105 169; 
    9 122 156 119 188 179 100 151; 
    8 176 137 114 135 123 134 183
    ];
disp("Threshold is at level 150");
threshold = 150;
A(A<threshold) = 0;
A(A>=threshold) = 1;
disp(A);

%{
2. Question: What happens to the results of the thresholding as the threshold level is increased?
Answer: As the threshold level is increased, the number of 1's in the matrix increases. 
This is because the threshold level is the minimum value for a pixel to be considered a 1.

The results of the thresholding change as the threshold level is increased. 
When the threshold level is increased, more pixels are included in the threshold, 
and as a result, more pixels are set to the foreground value.
%}

%{ 
3. Can you create a small image which produces an 'X' shape when
thresholded at level 100, and a cross shape '+' when
thresholded at level 150.
%}


