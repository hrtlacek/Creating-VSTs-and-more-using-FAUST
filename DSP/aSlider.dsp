import("stdfaust.lib");
freq = hslider("freq", 100, 0, 500, 0.1);
process = os.sawtooth(freq);
