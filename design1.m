X = [0, 4.125, 9, 12.375, 16.5, 20.625, 24.75, 28.875, 33];
Y = [0, 7, 0, 7, 0, 7, 0, 7, 0];
C = zeros(9, 15);
connections = {[1,2], [1,3,4], [2,3,5,6], [4,5,7,8], [6,7,9,10], [8,9,11,12], [10,11,13,14], [12,13,15], [14,15]};
for i = 1:9
    joints = connections{i};
    for j = 1:numel(joints)
        C(i, joints(j)) = 1;
    end
end
Sx = zeros(9, 3);
Sx(1, 1) = 1;
Sy = zeros(9, 3);
Sy(1, 2) = 1;
Sy(9, 3) = 1;
L = zeros(18, 1);
L(16, 1) = 32;
save('truss1.mat', 'C', 'X', 'Y', 'Sx', 'Sy', 'L');
