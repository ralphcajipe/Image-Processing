%{
Write a MATLAB program that will perform the following tasks:

1. Determine the saturation and intensity components of the following image, 
where the RGB values are as given: 
(0, 1, 1) (1, 2, 3) (7, 7, 7) (5, 1, 2) (1, 1, 7) 
(2,1, 2) (1, 7, 7) (2, 0, 2) (3, 3, 2) (5,5,0) 
(4,4,4) (4, 6, 7) (4, 5, 6) (1, 5, 7) (3, 6, 7) 
(3, 0, 3) (5, 2, 2) (1, 1, 1) (6, 6, 0) (2, 2, 2) 
(1, 2,1) (0, 4,4) (3, 1, 6) (3, 3, 3) (2,4, 6) 

%}

% RGB values
I = [
    0 1 1; 1 2 3; 7 7 7; 5 1 2; 1 1 7; 
    2 1 2; 1 7 7; 2 0 2; 3 3 2; 5 5 0; 
    4 4 4; 4 6 7; 4 5 6; 1 5 7; 3 6 7; 
    3 0 3; 5 2 2; 1 1 1; 6 6 0; 2 2 2; 
    1 2 1; 0 4 4; 3 1 6; 3 3 3; 2 4 6];

% Saturation
S = max(I')' - min(I')';

% Intensity
I = (1/3)*(sum(I')');

% Print results
disp('Saturation');
disp(S);
disp('Intensity');
disp(I);

% Visualize results
figure(1);
subplot(2,1,1);
plot(S);
title('Saturation');
subplot(2,1,2);
plot(I);
title('Intensity');
