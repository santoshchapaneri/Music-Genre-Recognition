
% Script to label music genres

function labels = GenerateLabels2()

% Blues 		120
% Electronic 	113
% Jazz 		319
% Pop 		116
% Rap/HipHop 	300
% Rock 		504
% Folk/Country 	222
% Alternative 	145
% Funk/Soul 	 47
% 
% 1 = alternative
% 2 = blues
% 3 = electronic
% 4 = folkcountry
% 5 = funksoulrnb
% 6 = jazz
% 7 = pop
% 8 = raphiphop
% 9 = rock

labels = cell(500,1);

for i=1:100
    labels{i} = 'elecronic';
end

for i=101:200
    labels{i} = 'jazz';
end

for i=201:300
    labels{i} = 'pop';
end

for i=301:400
    labels{i} = 'raphiphop';
end

for i=401:500
    labels{i} = 'rock';
end
end
