// This example crteates a band limited saw wave 
// whose partials alterate between left and right spekaer.

import("stdfaust.lib");

fc = hslider("Freq [unit:Hz][scale:log]", 60, 10, 20000, 0.1):si.smoo;
N = 10;
bank(fc) = par(i, N, myOsc(i)) with{
    
    myOsc(i) = os.osc(fc*(i+1))/(i+1);
};


process = bank(fc):>(_,_);
