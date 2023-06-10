import("stdfaust.lib");
f_mod = hslider("modulator frequency [unit:Hz] [scale:log]", 100, 1, 10000, 0.1):si.smoo;
f_amount = hslider("modulation amount [unit:Hz] [scale:log]", 1, 1, 10000, 0.1):si.smoo;
f_fund = hslider("fund freq [unit:Hz] [scale:log]", 100, 1, 10000, 0.1):si.smoo;
modulator = os.osc(f_mod);

carrier = os.osc(f_fund+modulator*f_amount);

process = carrier<:_,_;