import("stdfaust.lib");

gate = button("gate"); //maps to note on/ note off
gain = hslider("gain", 1, 0, 1, 0.01); // maps to velocity
freq = hslider("[0]freq", 100, 10, 2000, 0.1):si.smoo; //maps to pitch

// Adrs envelope
att = 0.1;
dec = 0.3;
sus = 0.5;
rel = 1;
ampEnv = en.adsr(att, dec, sus, rel, gate)*gain;
// sawtooth, amplitide env, lowpass filter.
mySynth = os.sawtooth(freq):_*ampEnv:fi.resonlp(2000, 0.8, 1);

process = mySynth<:_,_;