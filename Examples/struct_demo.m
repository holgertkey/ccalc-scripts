% struct_demo.m — Structs: fields, nested structs, fieldnames, struct arrays.
%
% Covers: dot notation, fieldnames, isfield, rmfield, nested structs,
%         building struct arrays in a loop.
%
% Run:
%   ccalc struct_demo.m

fprintf('--- Basic struct ---\n')
p.name  = 'Alice';
p.age   = 30;
p.score = 9.5;
p

fprintf('\n--- Accessing fields ---\n')
fprintf('Name: %s\n', p.name)
fprintf('Age:  %d\n', p.age)

fprintf('\n--- fieldnames ---\n')
fn = fieldnames(p)

fprintf('\n--- isfield ---\n')
fprintf('isfield(p, "name")  = %d\n', isfield(p, 'name'))
fprintf('isfield(p, "phone") = %d\n', isfield(p, 'phone'))

fprintf('\n--- rmfield ---\n')
p2 = rmfield(p, 'score')
fieldnames(p2)

fprintf('\n--- Nested struct ---\n')
company.name = 'Acme';
company.address.city    = 'Springfield';
company.address.country = 'US';
fprintf('City: %s, Country: %s\n', company.address.city, company.address.country)

fprintf('\n--- Struct array (built in a loop) ---\n')
for k = 1:4
  team(k).id    = k;
  team(k).score = k * 10;
end
fprintf('team(3).score = %d\n', team(3).score)

fprintf('\n--- Iterating over struct array fields ---\n')
for k = 1:4
  fprintf('  id=%d score=%d\n', team(k).id, team(k).score)
end
