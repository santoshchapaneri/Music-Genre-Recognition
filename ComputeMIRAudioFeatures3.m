function Feats = ComputeMIRAudioFeatures3(filename)

Feats = [];

[s] = wavread(filename);
s1 = miraudio(s);

s2 = mirpulseclarity(s1);
Feats = [Feats mirgetdata(s2)];
end