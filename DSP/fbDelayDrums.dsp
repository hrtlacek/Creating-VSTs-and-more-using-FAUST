import("stdfaust.lib");

//auotmatically trigger the basedrum. Useful for development.
period = hslider("per [scale:log]", 200, 0.1, 2000, 0.1):si.smoo:_/1000:_*ma.SR;
gate = ba.pulsen(period/2, period);

delLenSec = hslider("delLen [unit:ms] [scale:log]", 1, 0.1, 1000, 0.1):si.smoo:_/1000;

delLenSamps = delLenSec*ma.SR;

fb = os.osc(0.2)*2;

eff = (_+_:de.fdelay(44100, delLenSamps))~(_*fb:ma.tanh:fi.lowpass(2, 5000):fi.dcblocker);

process = gate:eff:fi.dcblocker<:_,_;
