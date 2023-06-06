import("stdfaust.lib");
myElement = fi.lowpass(3, 1000);

process = (myElement,_,_);
