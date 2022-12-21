
function FeatureSet = processAudioGenreFolder2
    d = 'D:\Santosh\Projects\MusicGenreClassification\2014\MusicDBWav5\';
%       d = 'E:\MusicDBWav\';   
      
    FeatureSet = zeros(500,5);  
    names = dir(fullfile(d,'*.wav') );
    names = {names(~[names.isdir]).name};
    for n = 1:numel(names)
        n
        filename = [d names{n}];
        Feats = ComputeMIRAudioFeatures4FP(filename);
        FeatureSet(n,:) = Feats;
    end
    
    save('AllFeaturesAllGenres_FPFeatures.mat','FeatureSet');
end