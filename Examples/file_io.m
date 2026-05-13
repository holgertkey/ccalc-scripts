% file_io.m — Reading and writing files.
%
% Covers: fopen/fclose/fgetl/fprintf (text), dlmread/dlmwrite (CSV),
%         isfile, exist, temporary file pattern.
%
% Run:
%   ccalc file_io.m

tmp_txt = 'file_io_tmp.txt';
tmp_csv = 'file_io_tmp.csv';

% ---------------------------------------------------------------
fprintf('--- Write text file with fopen/fprintf/fclose ---\n')
fid = fopen(tmp_txt, 'w');
fprintf(fid, 'Line 1: hello\n')
fprintf(fid, 'Line 2: value = %.4f\n', pi)
fprintf(fid, 'Line 3: done\n')
fclose(fid);
fprintf('Written: %s\n', tmp_txt)

% ---------------------------------------------------------------
fprintf('\n--- Read text file line-by-line with fgetl ---\n')
fid = fopen(tmp_txt, 'r');
line_num = 0;
line = fgetl(fid);
while ischar(line)
  line_num++;
  fprintf('  [%d] %s\n', line_num, line)
  line = fgetl(fid);
end
fclose(fid);

% ---------------------------------------------------------------
fprintf('\n--- Write CSV matrix with dlmwrite ---\n')
M = [1, 2, 3; 4, 5, 6; 7, 8, 9];
dlmwrite(tmp_csv, M, ',');
fprintf('Written: %s\n', tmp_csv)

% ---------------------------------------------------------------
fprintf('\n--- Read CSV with dlmread ---\n')
M2 = dlmread(tmp_csv, ',')
fprintf('Size: %d x %d\n', size(M2, 1), size(M2, 2))

% ---------------------------------------------------------------
fprintf('\n--- File existence checks ---\n')
fprintf('isfile(tmp_txt) = %d\n', isfile(tmp_txt))
fprintf('isfile(no_such) = %d\n', isfile('no_such_file.txt'))

% ---------------------------------------------------------------
fprintf('\n--- Cleanup ---\n')
% Remove temp files (using fopen trick: open for write clears content,
% then close — a full delete is not available as a built-in)
fclose(fopen(tmp_txt, 'w'));
fclose(fopen(tmp_csv, 'w'));
fprintf('Temp files cleared.\n')
