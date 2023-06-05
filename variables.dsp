import("stdfaust.lib");
myNoise = no.noise;
myFilter = fi.lowpass(3, 1000);
filteredNoise = myNoise:myFilter;
process = filteredNoise;
