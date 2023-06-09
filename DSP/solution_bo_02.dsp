import("stdfaust.lib");

//sliders added
freq = hslider("[0]freq [scale:log][unit:Hz]", 100, 10, 2000, 0.1):si.smoo;
cutoff = hslider("[1]cutoff [scale:log][unit:Hz]", 100, 10, 2000, 0.1):si.smoo;
Q = hslider("[2]Q", 1, 1, 20, 0.1):si.smoo;
delSamps = hslider("[3]combdel [scale:log][unit:ms]", 1, 0.1, 100, 0.01):si.smooth(0.9999):_/1000:ba.sec2samp;
feedback = hslider("[4]fb", 0.3, 0,1,0.01);

// added a feedback combfilter and a softclipper
mySynth = osc:dist:filt:effect:softclip<:_,_ with{
    osc = os.osc(freq);
    dist = _*10:ma.tanh;
    filt = fi.resonlp(cutoff, Q, 0.3);
    effect = fi.fbcombfilter(4096*2, delSamps, feedback );
    softclip = ma.tanh;
};

process = mySynth;


