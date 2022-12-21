
function FeatureSet = processAudioGenreFolder4
    d = 'D:\Santosh\Projects\MusicGenreClassification\2014\MusicDBWav5\';
%       d = 'E:\MusicDBWav\';   
      
    FeatureSet = zeros(500,32);  
    names = dir(fullfile(d,'*.wav') );
    names = {names(~[names.isdir]).name};
    for n = 1:numel(names)
        n
        filename = [d names{n}];
        Feats = ComputeMIRAudioFeatures6SC(filename);
        FeatureSet(n,:) = Feats;
    end
    
    save('AllFeaturesAllGenres_SpectralContrastFeatures.mat','FeatureSet');
end