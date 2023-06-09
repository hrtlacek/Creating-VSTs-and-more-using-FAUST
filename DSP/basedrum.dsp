import("stdfaust.lib");

//auotmatically trigger the basedrum. Useful for development.
gate = ba.pulsen(4410, 44100);

//gate = button("gate"); //maps to note on/ note off
gain = hslider("gain", 1, 0, 1, 0.01); // maps to velocity
freq = hslider("[0]freq", 45, 10, 2000, 0.1):si.smoo; //maps to pitch

// ADSR envelope
att = hslider("attack [scale:log][units:ms]", 1, 1, 1000, 0.1)/1000;
dec = 0.1;
sus = 0.5;
rel = 0.2;
ampEnv = en.adsr(att, dec, sus, rel, gate)/8;//*gain;


pdec = hslider("freqDecay [unit:ms][scale:log]", 25, 1, 1000, 0.1)/1000;
patt = 0.001;

freqModAmount = hslider("freqMax [unit:Hz][scale:log]", 500, 1, 10000, 0.1);
freqModEnv = pow(en.ar(patt, pdec, gate), 2);
freqMod = freqModAmount*freqModEnv;

soundGen(freq) = os.osc(freq + freqMod)+no.noise*0.01;
bd = soundGen(freq)*ampEnv;

guitarAmp = component("tubes.lib").T1_6C16:fi.lowpass(1,6531.0) : component("tubes.lib").T2_12AX7:component("tonestacks.lib").mesa(1,0.3,1);
ampAmount = hslider("ampAmount", 0.2, 0,1,0.1);
process = bd:ef.dryWetMixer(ampAmount, guitarAmp)<:_,_;
