import("stdfaust.lib");
imp = 1<:_,_':-;
delImp = imp@20;
alpha  = 0.98;

// block diagram description
filter1 = (_*(1-alpha)):+~(_*alpha);

// letrec description
filter2(x) = y 
letrec {
    'y = x*(1-alpha)+y*alpha;
};


process = no.noise:filter1:filter2<:_,_;