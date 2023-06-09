import("stdfaust.lib");
freq = 100;
cutoff = 500;
Q = 3;

mySynth = osc:dist:filt<:_,_ with{
    osc = os.osc(freq);
    dist = _*10:ma.tanh;
    filt = fi.resonlp(cutoff, Q, 0.3);
};

process = mySynth;