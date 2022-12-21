function Feats = ComputeMIRAudioFeatures6SC(filename)

Feats = [];

[specampsum2,specampsum,spectralcontrast,spectralvalley, rmsenergy,flux,centroid,rolloff] = features_spectral(filename);

for k=1:8
    Feats = [Feats mean(spectralcontrast(:,k)) mean(spectralvalley(:,k))];
end

for k=1:8
    Feats = [Feats std(spectralcontrast(:,k)) std(spectralvalley(:,k))];
end

end