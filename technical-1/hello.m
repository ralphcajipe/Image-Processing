% MATLAB program

% Write hello world to the screen

disp('Hello World')

% Define a variable

a = 2;

% Define another variable

b = 3;

% Add the two variables together

c = a + b;

% Display the result to the screen

disp(c)

% End of program

% Close the file

fclose(fid);

% Open the file for reading

fid = fopen('hello.m','r');

% Read the file

tline = fgetl(fid);

% Read the file line by line

while ischar(tline)

disp(tline)

tline = fgetl(fid);

end

% Close the file

fclose(fid);

% End of program

% Open the file for reading

fid = fopen('hello.m','r');

% Read the file

tline = fgetl(fid);

% Read the file line by line

while ischar(tline)

% Check if the line contains the word 'world'

if ~isempty(strfind(tline,'world'))

% Display the line

disp(tline)

end

% Read the next line

tline = fgetl(fid);

end

% Close the file

fclose(fid);

% End of program

% Open the file for reading

fid = fopen('hello.m','r');

% Read the file

tline = fgetl(fid);

% Read the file line by line

while ischar(tline)

% Check if the line contains the word 'world'

if ~isempty(strfind(tline,'world'))

% Display the line

disp(tline)

% Find the position of the word 'world'

pos = strfind(tline,'world');

% Extract the word 'world'

word = tline(pos:pos+4);

% Display the word

disp(word)

end

% Read the next line

tline = fgetl(fid);

end

% Close the file

fclose(fid);

% End of program

% Open the file for reading

fid = fopen('hello.m','r');

% Read the file

tline = fgetl(fid);

% Read the file line by line

while ischar(tline)

% Check if the line contains the word 'world'

if ~isempty(strfind(tline,'world'))

% Display the line

disp(tline)

% Find the position of the word 'world'

pos = strfind(tline,'world');

% Extract the word 'world'

word = tline(pos:pos+4);

% Display the word

disp (word)