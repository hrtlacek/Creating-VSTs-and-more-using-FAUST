import("stdfaust.lib");
freq = hslider("freq", 200, 0, 2000, 0.1);
res(f) = fi.resonbp(f, 5000, 1);
imp = 1<:_,_':-;
N = 10;
gain = 1/N;
resonator(f) = par(i, 10, reselem(i)) with {

    reselem(i) = res(freq*(1+i));
};
process = _<:resonator(freq):>_*gain;
