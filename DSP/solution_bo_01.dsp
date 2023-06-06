import("stdfaust.lib");
myNoise = no.noise;
myFilter = fi.highpass(3, 1000);
myOsc = os.osc(100);
filteredNoise = myNoise:myFilter;
process = (myOsc, filteredNoise);
