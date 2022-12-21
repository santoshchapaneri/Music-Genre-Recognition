A = load('39FeaturesPerGenre500SongsNorm.mat');
A = A.num;

for k=1:39
    k
    boxplot([A(1:100,k),A(101:200,k),A(201:300,k),A(301:400,k),A(401:500,k)],'notch','on');
    pause;
end