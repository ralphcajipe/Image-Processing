% [T1-TECHNICAL] - Basic Use of Matlab
% Ralph Cajipe

% A MATLAB script for the following problem: %

% 1. Perform the following calculations:
% 132 + 45, 235 x 645, 12.45/17.56, sin(π/6), e raised to 0.5, √2
disp('1. Perform the following calculations:')
disp('132 + 45:')
disp(132 + 45)

disp('235 x 645:')
disp(235 * 645)

disp('12.45/17.56:')
disp(12.45/17.56)

disp('sin(pi/6):')
disp(sin(pi/6))

disp('e raised to 0.5 (Napier’s constant):')
disp(exp(0.5))

disp('square root of 2:')
disp(sqrt(2))


% 2. Now enter format long and repeat the above calculations.
disp('==================================')
disp('2. format long - Display more digits after the decimal point')
format long

disp('132 + 45:')
disp(132 + 45)

disp('235 x 645:')
disp(235 * 645)

disp('12.45/17.56:')
disp(12.45/17.56)

disp('sin(pi/6):')
disp(sin(pi/6))

disp('e^0.5:')
disp(exp(0.5))

disp('√ square root of 2:')
disp(sqrt(2))


% 3. Read the help file for format, and experiment with some of the other settings.
disp('==================================')
disp('3. format short - Display fewer digits after the decimal point')
format short

disp('132 + 45:')
disp(132 + 45)

disp('235 x 645:')
disp(235 * 645)

disp('12.45/17.56:')
disp(12.45/17.56)

disp('sin(π pi/6):')
disp(sin(pi/6))

disp('e^0.5:')
disp(exp(0.5))

disp('√ square root of 2:')
disp(sqrt(2))


% 4. Enter the following variables: a = 123456, b = 3^1/4, c = cos(π/8). Now calculate:
% (a + b)/c, 2a - 3b, c^2√a - b, a/(3b + 4c), exp(a^1/4 - b^10)
disp('==================================')
disp('4. Enter the following variables: a = 123456, b = 3^1/4, c = cos(π/8). Now calculate:')
a = 123456;
b = 3^1/4;
c = cos(pi/8);

disp('(a + b)/c:')
disp((a + b)/c)

disp('2a - 3b:')
disp(2*a - 3*b)

disp('c^2 √ square root of a - b:')
disp(c^2*sqrt(a) - b)

disp('a/(3b + 4c):')
disp(a/(3*b + 4*c))

disp('exp(a^1/4 - b^10):')
disp(exp(a^1/4 - b^10))


% 5. Find the MATLAB functions for the inverse trigonometric functions sin^-1, cos^-1, and tan^-1.
% Then calculate: sin^-1(0.5), cos^-1(√3/2), tan^-1(2)
% Convert answers from radians to degrees.
disp('==================================')
disp('5. Find the MATLAB functions for the inverse trigonometric functions sin^-1, cos^-1, and tan^-1.')
disp('Then calculate: sin^-1(0.5), cos^-1(√3/2), tan^-1(2)')
disp('Convert answers from radians to degrees.')

disp('sin^-1(0.5):')
disp(asind(0.5))

disp('cos^-1(√3/2):')
disp(acosd(sqrt(3)/2))

disp('tan^-1(2):')
disp(atand(2))


% 6. Using vectorization and the colon operator, use a single command to generate:
% a) the first 15 cubes,
% b) the values sin(nπ/16) for n from 1 to 16,
% c) the values √n for n from 10 to 20
disp('==================================')
disp('6. Using vectorization and the colon operator, use a single command to generate:')
disp('a) the first 15 cubes,')
disp('b) the values sin(nπ/16) for n from 1 to 16,')
disp('c) the values √n for n from 10 to 20')

disp('a) the first 15 cubes:')
disp((1:15).^3)

disp('b) the values sin(nπ/16) for n from 1 to 16:')
disp(sin((1:16)*pi/16))

disp('c) the values √n for n from 10 to 20:')
disp(sqrt(10:20))


% 7. Enter the following matrices: A = [1 2 3; 2 3 4; 3 4 5], B = [-1 2 -1; -3 -4 5; 2 3 -4],
% C = [0 -2 1; -3 5 2; 1 1 -7]
% Now calculate: 2A - 3B, A^T, AB - BA, BC^-1, (AB)^T, B^TA^T, A^2 + B^3
disp('==================================')
disp('7. Enter the following matrices: A = [1 2 3; 2 3 4; 3 4 5], B = [-1 2 -1; -3 -4 5; 2 3 -4],')
disp('C = [0 -2 1; -3 5 2; 1 1 -7]')
disp('Now calculate: 2A - 3B, A^T, AB - BA, BC^-1, (AB)^T, B^TA^T, A^2 + B^3')

A = [1 2 3; 2 3 4; 3 4 5];
B = [-1 2 -1; -3 -4 5; 2 3 -4];
C = [0 -2 1; -3 5 2; 1 1 -7];

disp('2A - 3B:')
disp(2*A - 3*B)

disp('A^T:')
disp(A')

disp('AB - BA:')
disp(A*B - B*A)

disp('BC^-1:')
disp(B*inv(C))

disp('(AB)^T:')
disp((A*B)')

disp('B^TA^T:')
disp(B'*A')

disp('A^2 + B^3:')
disp(A^2 + B^3)


% 8. use the det function to determine the determinant
% of each of the marices in the previous question.
% What happens if you try to find the inverse of matrix A?
disp('==================================')
disp('8. use the det function to determine the determinant')
disp('of each of the marices in the previous question.')
disp('What happens if you try to find the inverse of matrix A?')

disp('det of A:')
disp(det(A))

disp('det of B:')
disp(det(B))

disp('det of C:')
disp(det(C))

disp('The inverse of A:')
disp(inv(A))


% 9. Plot the function tan(x) with the following commands:
% x = [0:0.1:10];
% plot(x, tan(x))
% figure, plot(x, tan(x)), axis([0, 10, -10, 10])
disp('==================================')
disp('9. Plot the function tan(x) with the following commands:')
disp('x = [0:0.1:10];')
disp('plot(x, tan(x))')
disp('figure, plot(x, tan(x)), axis([0, 10, -10, 10])')

x = 0:0.1:10;
plot(x, tan(x))
figure, plot(x, tan(x)), axis([0, 10, -10, 10])

% Display new line for spacing
disp(' ')
disp('What does the axis function do?')
disp('Answer: It sets the axis limits and  aspect ratios for the current plot.')

% Experiment with changing the last two numbers in axis for the above command.
disp(' ')
disp('Experiment with changing the last two numbers in axis for the above command.')
figure, plot(x, tan(x)), axis([0, 10, -5, 5])
