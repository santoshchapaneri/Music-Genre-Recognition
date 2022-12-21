clc;

d = 'D:\Santosh\Projects\MusicGenreClassification\2014\MusicDBWav\';

myfile1 = sprintf('%s%d_%d.wav',d,1,1);    
[afAudioData1, fs1] = wavread(myfile1);
[v_sc1,t1] = ComputeFeature('SpectralCentroid', afAudioData1, fs1);
figure;plot(t1,v_sc1)
grid on, xlabel('t'),ylabel('v_sc')
% [TRNB, BpmRNB] = ComputeBeatHisto (afAudioData, fs);

myfile2 = sprintf('%s%d_%d.wav',d,5,1);    
[afAudioData2, fs2] = wavread(myfile2);
[v_sc2,t2] = ComputeFeature('SpectralCentroid', afAudioData2, fs2);
figure;plot(t2,v_sc2)
grid on, xlabel('t'),ylabel('v_sc')
% [TElec, BpmElec] = ComputeBeatHisto (afAudioData, fs);

% 
% [afAudioData, fs] = mp3read('01.mp3');
% [v_sc,t] = ComputeFeature('SpectralRolloff', afAudioData(:,1), fs);
% figure;plot(t,v_sc)
% grid on, xlabel('t'),ylabel('v_sc')
% 
% 
% [afAudioData, fs] = mp3read('02.mp3');
% [v_sc,t] = ComputeFeature('SpectralRolloff', afAudioData(:,1), fs);
% figure;plot(t,v_sc)
% grid on, xlabel('t'),ylabel('v_sc')

