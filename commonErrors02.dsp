import("stdfaust.lib");
process = no.noise:fi.lowpass(3);

// This program produces an error:
// ERROR : sequential composition noise:lowpass(3) The number of outputs [1] of noise must be equal to the number of inputs [2] of lowpass(3) Here noise = (_,12345 : +)~(_,1103515245 : *),2.1474836e+09f : /; has 1 output while lowpass(3) = \(x1).(_<:(_,((1,(0,(1,(((6.2831855f,x1 : *),0.5f : *),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : / : tan) : /) : *) : +),(1,(1,(((6.2831855f,x1 : *),0.5f : *),(1. ...; has 2 inputs
