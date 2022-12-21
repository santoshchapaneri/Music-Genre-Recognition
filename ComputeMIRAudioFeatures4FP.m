function Feats = ComputeMIRAudioFeatures4FP(filename)

Feats = [];

p.fs          = 22050;       %% sampling frequency of given wav (unit: Hz)
[s] = wavread(filename);
[sone] = ma_sone(s,p);

fp_p.sequence.length = 1024;   %% windows size (ca 6sec @ 11kHz with 128 sone hopsize)
fp_p.sequence.hopsize = 512;  
fp_p.sequence.windowfunction = 'boxcar';
fp_p.fs = 22050;              %% sampling frequency of wav file
fp_p.fft_hopsize = 512;       %% (~12ms @ 11kHz) hopsize used to create sone 
fp_p.visu = 0;                %% do some visualizations
FP = ma_fp(sone,fp_p);

fp_max = max(FP(:));
fp_bass = sum(sum(FP(1:2,3:end)));
fp_DLF = sum(sum(FP(1:3,:)))/max(sum(sum(FP(9:12,:))),eps);
fp_grav = sum(sum(FP).*(1:60))/max(sum(FP(:)),eps);
fp_focus = mean(FP(:)./max(max(FP(:)),eps));


Feats = [Feats fp_max fp_bass fp_DLF fp_grav fp_focus];
end