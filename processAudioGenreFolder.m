
function FeatureSet = processAudioGenreFolder
    d = 'D:\Santosh\Projects\MusicGenreClassification\2014\MusicDBWav\';
%       d = 'E:\MusicDBWav\';   
      
    FeatureSet = zeros(3,189);  
    names = dir(fullfile(d,'*.wav') );
    names = {names(~[names.isdir]).name};
%     for n = 1:numel(names)
    for n = 1:3
        filename = [d names{n}];
        namenoextn = names{n}; namenoextn = namenoextn(1:end-4);
        Feats = ComputeMIRAudioFeatures2(filename, namenoextn);
        FeatureSet(n,:) = Feats;
    end
    
    save('AllFeaturesAllGenres_2.mat','FeatureSet');
end