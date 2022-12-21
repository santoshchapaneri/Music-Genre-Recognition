function ComputeMIRAudioFeatures(filename, output)

Feats = [];

[s] = wavread(filename);
s1 = miraudio(s);

f = mirfeatures(s1);
f_rms = mirstat(f.dynamics.rms);
Feats = [Feats f_rms.Mean f_rms.Std f_rms.Slope f_rms.PeriodFreq f_rms.PeriodAmp f_rms.PeriodEntropy];

f_fpeak = mirstat(f.fluctuation.peak);
Feats = [Feats f_fpeak.PeakPosMean f_fpeak.PeakMagMean];

f_fcentroid = mirstat(f.fluctuation.centroid);
Feats = [Feats f_fcentroid.Mean];

f_ronsets = mirstat(f.rhythm.tmp.onsets);
Feats = [Feats f_ronsets.PeakPosMean f_ronsets.PeakMagMean];

f_rtempo = mirstat(f.rhythm.tempo);
Feats = [Feats f_rtempo.Mean f_rtempo.Std f_rtempo.Slope f_rtempo.PeriodEntropy];

f_rattacktime = mirstat(f.rhythm.attack.time);
Feats = [Feats f_rattacktime.Mean f_rattacktime.Std f_rattacktime.Slope f_rattacktime.PeriodEntropy];

f_rattackslope = mirstat(f.rhythm.attack.slope);
Feats = [Feats f_rattackslope.Mean f_rattackslope.Std f_rattackslope.Slope f_rattackslope.PeriodEntropy];

f_tzcr = mirstat(f.timbre.zerocross);
Feats = [Feats f_tzcr.Mean f_tzcr.Std f_tzcr.Slope f_tzcr.PeriodEntropy];

f_tlowenergy = mirstat(f.timbre.lowenergy);
Feats = [Feats f_tlowenergy.Mean];

f_tspectralflux = mirstat(f.timbre.spectralflux);
Feats = [Feats f_tspectralflux.Mean f_tspectralflux.Std f_tspectralflux.Slope f_tspectralflux.PeriodFreq f_tspectralflux.PeriodAmp f_tspectralflux.PeriodEntropy];

f_scentroid = mirstat(f.spectral.centroid);
Feats = [Feats f_scentroid.Mean f_scentroid.Std f_scentroid.Slope f_scentroid.PeriodFreq f_scentroid.PeriodAmp f_scentroid.PeriodEntropy];

f_sbrightness=mirstat(f.spectral.brightness);
Feats = [Feats f_sbrightness.Mean f_sbrightness.Std f_sbrightness.Slope f_sbrightness.PeriodFreq f_sbrightness.PeriodAmp f_sbrightness.PeriodEntropy];

f_sspread = mirstat(f.spectral.spread);
Feats = [Feats f_sspread.Mean f_sspread.Std f_sspread.Slope f_sspread.PeriodFreq f_sspread.PeriodAmp f_sspread.PeriodEntropy];

f_sskewness = mirstat(f.spectral.skewness);
Feats = [Feats f_sskewness.Mean f_sskewness.Std f_sskewness.Slope f_sskewness.PeriodFreq f_sskewness.PeriodAmp f_sskewness.PeriodEntropy];

f_sspectralentropy = mirstat(f.spectral.spectentropy);
Feats = [Feats f_sspectralentropy.Mean f_sspectralentropy.Std f_sspectralentropy.Slope f_sspectralentropy.PeriodFreq f_sspectralentropy.PeriodAmp f_sspectralentropy.PeriodEntropy];

f_skurtosis = mirstat(f.spectral.kurtosis);
Feats = [Feats f_skurtosis.Mean f_skurtosis.Std f_skurtosis.Slope f_skurtosis.PeriodFreq f_skurtosis.PeriodAmp f_skurtosis.PeriodEntropy];

f_sirregularity = mirstat(f.spectral.irregularity);
Feats = [Feats f_sirregularity.Mean f_sirregularity.Std f_sirregularity.Slope f_sirregularity.PeriodFreq f_sirregularity.PeriodAmp f_sirregularity.PeriodEntropy];

f_sflatness = mirstat(f.spectral.flatness);
Feats = [Feats f_sspectralentropy.Mean f_sspectralentropy.Std f_sspectralentropy.Slope f_sspectralentropy.PeriodFreq f_sspectralentropy.PeriodAmp f_sspectralentropy.PeriodEntropy];

f_srolloff85 = mirstat(f.spectral.rolloff85);
Feats = [Feats f_srolloff85.Mean f_srolloff85.Std f_srolloff85.Slope f_srolloff85.PeriodFreq f_srolloff85.PeriodAmp f_srolloff85.PeriodEntropy];

f_srolloff95 = mirstat(f.spectral.rolloff95);
Feats = [Feats f_srolloff95.Mean f_srolloff95.Std f_srolloff95.Slope f_srolloff95.PeriodFreq f_srolloff95.PeriodAmp f_srolloff95.PeriodEntropy];

f_smfcc = mirstat(f.spectral.mfcc);
i=1;
while i<14
Feats = [Feats f_smfcc.Mean(i) f_smfcc.Std(i) f_smfcc.Slope(i) f_smfcc.PeriodFreq(i) f_smfcc.PeriodAmp(i) f_smfcc.PeriodEntropy(i)];
i=i+1;
end

f_sdmfcc = mirstat(f.spectral.dmfcc);
i=1;
while i<14
Feats = [Feats f_sdmfcc.Mean(i) f_smfcc.Std(i) f_sdmfcc.Slope(i) f_sdmfcc.PeriodFreq(i) f_sdmfcc.PeriodAmp(i) f_sdmfcc.PeriodEntropy(i)];
i=i+1;
end

f_sddmfcc = mirstat(f.spectral.ddmfcc);
i=1;
while i<14
Feats = [Feats f_sddmfcc.Mean(i) f_sddmfcc.Std(i) f_sddmfcc.Slope(i) f_sddmfcc.PeriodFreq(i) f_sddmfcc.PeriodAmp(i) f_sddmfcc.PeriodEntropy(i)];
i=i+1;
end

f_tochromagram = mirstat(f.tonal.chromagram.peak);
Feats = [Feats f_tochromagram.PeakPosMean f_tochromagram.PeakPosStd f_tochromagram.PeakPosSlope f_tochromagram.PeakPosPeriodFreq f_tochromagram.PeakPosPeriodAmp f_tochromagram.PeakPosPeriodEntropy f_tochromagram.PeakMagMean f_tochromagram.PeakMagStd f_tochromagram.PeakMagSlope f_tochromagram.PeakMagPeriodFreq f_tochromagram.PeakMagPeriodAmp f_tochromagram.PeakMagPeriodEntropy ];

f_tocentroid = mirstat(f.tonal.chromagram.centroid);
Feats = [Feats f_tocentroid.Mean f_tocentroid.Std f_tocentroid.Slope f_tocentroid.PeriodFreq f_tocentroid.PeriodAmp f_tocentroid.PeriodEntropy];

f_tokeyclarity = mirstat(f.tonal.keyclarity);
Feats = [Feats f_tokeyclarity.Mean f_tokeyclarity.Std f_tokeyclarity.Slope f_tokeyclarity.PeriodEntropy];

f_tomode = mirstat(f.tonal.mode);
Feats = [Feats f_tomode.Mean f_tomode.Std f_tomode.Slope f_tomode.PeriodFreq f_tomode.PeriodAmp f_tomode.PeriodEntropy];

f_tohcdf=mirstat(f.tonal.hcdf);
Feats = [Feats f_tohcdf.Mean f_tohcdf.Std f_tohcdf.Slope f_tohcdf.PeriodFreq f_tohcdf.PeriodAmp f_tohcdf.PeriodEntropy];

save(strcat('features_f',output,'.mat'),'Feats');
end