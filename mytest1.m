
[afAudioData, fs] = mp3read('01.mp3');
[v_sc,t] = ComputeFeature('SpectralCentroid', afAudioData(:,1), fs);
figure;plot(t,v_sc)
grid on, xlabel('t'),ylabel('v_sc')
[TRNB, BpmRNB] = ComputeBeatHisto (afAudioData(1:40000,1), fs);

[afAudioData, fs] = mp3read('02.mp3');
[v_sc,t] = ComputeFeature('SpectralCentroid', afAudioData(:,1), fs);
figure;plot(t,v_sc)
grid on, xlabel('t'),ylabel('v_sc')
[TElec, BpmElec] = ComputeBeatHisto (afAudioData(1:40000,1), fs);

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

