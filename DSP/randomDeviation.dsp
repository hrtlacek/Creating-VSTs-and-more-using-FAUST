import("stdfaust.lib");

RANDMAX	= 2147483647.0;
r(seed) = ((seed) *(1103515245))/RANDMAX;

fc = hslider("Freq [unit:Hz][scale:log]", 100, 10, 20000, 0.1):si.smoo;
amp = hslider("amp [unit:dB]", -6, -60,0, 0.1):si.smoo:ba.db2linear;
N = 10;
spread = hslider("Spread [unit:Hz][scale:log]", 100, 1, 20000, 0.1):si.smoo;
bank(fc) = par(i, N, myOsc(i)) with{
    
    myOsc(i) = os.osc(fc+(spread*r(i+1)));
};


process = bank(fc):>(_)*amp:aa.clip(-1,1)<:(_,_);
