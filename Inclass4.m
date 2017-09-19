%AW: looks good. 1/1. 

%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. (b) Write code
%that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 

% PART A

filename = 'RandomNumbers.txt';
fid = fopen(filename, 'w');           % Write the new file
fprintf(fid, 'Random numbers 1\n');   % Give the first line

% Loop through 10 lines
for i = 1:10
   
    % Print a new line of 13 random numbers
    fprintf(fid, '%f %f %f %f %f %f %f %f %f %f %f %f %f\n', rand(1,13));
    
end

fprintf(fid, 'Random numbers 2\n');   % Give next line of text

% Loop through 9 lines
for i = 1:9
   
    % Print a new line of 7 random numbers
    fprintf(fid, '%f %f %f %f %f %f %f\n', rand(1,7));
    
end

% PART B

fid = fopen('RandomNumbers.txt', 'r');    % Open the file to read
fgetl(fid);                               % Skip the line with text
line = fgetl(fid);                        % Save first line of numbers

% Split the string of random numbers into an array of floating point values
splits = strsplit(line, ' ');
floats = cellfun(@str2num,splits);

disp(floats)

% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 

is_ten_or_larger([0 0 0 0 1])
is_ten_or_larger([83 12])
is_ten_or_larger([10 0 0 0 0 0 0 0 0 0 0 0 0 0 0])

function boolean = is_ten_or_larger(given_array)
sum_val = sum(given_array);  % take sum of numbers
boolean = sum_val >= 10;     % evaluate whether the sum is >= 10
end

