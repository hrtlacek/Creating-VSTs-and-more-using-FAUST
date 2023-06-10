// Old-school (1977) FM Piano Sound
// References
// https://ccrma.stanford.edu/software/snd/snd/fm.html
//https://www.jstor.org/stable/pdf/40731300.pdf?casa_token=inZWkovf-rsAAAAA:vSdddY0uS-_R2sJdkSyTizJaT8h_quUdZk_7qx2pVeI71JKue4cOdcixZjpA7h9b5SQ7MN8gNNd6j2kCQ5WEb3Iq1bxvunf2wW_57PvxP3SB34QqzBMw


import("stdfaust.lib");
f_fund = hslider("freq [unit:Hz] [scale:log]", 100, 1, 10000, 0.1);

gate = button("gate");
gain = hslider("gain", 1,0,1,0.01);
env = gate:en.adsr(0.01, 0.2, 0.3, 0.5)*gain;

f_mod1 = f_fund+0.005*f_fund;
f_mod2 = f_fund*4+0.005*f_fund;

f_amount1 = 17*(8-log(f_fund))/pow((log(f_fund)),2);
f_amount2 = 20*(8-log(f_fund))/f_fund;

modulator1 = os.osc(f_mod1)*f_amount1*f_fund;
modulator2 = os.osc(f_mod2)*f_amount2*f_fund;

carrier = os.osc(f_fund + modulator1 + modulator2 )*env; 

process = carrier<:_,_:dm.zita_light;