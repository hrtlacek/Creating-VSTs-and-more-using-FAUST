# Music Hackspace Workshop: *Creating VSTs and more using FAUST*


## Workshop Structure

### introduction

- Motivation: Why FAUST
- [my first FAUST program](DSP/noise.dsp)
- Getting Help:
  - [The Manual](https://faustdoc.grame.fr/manual/introduction/)
    - [Especially the Syntax Section](https://faustdoc.grame.fr/manual/syntax)
  - [Libraries Documentation](https://faustlibraries.grame.fr/)
- [Web IDE](https://faustide.grame.fr/) Overview
- a word about the [FAUST Library](https://github.com/grame-cncm/faustlibraries)
- [Sequential Composition of effects](DSP/sequential01.dsp)
- Common Errors:
  - [`ERROR : syntax error, unexpected ....`](DSP/commonErrors01.dsp)
  - [`ERROR : sequential composition ....`](DSP/commonErrors02.dsp)
- [Parallel Composition](DSP/parallel01.dsp)
- [assigning variables to keep things simple](DSP/variables.dsp)
- *Breakout session 01*: Build a program that plays a 100 Hz sine-wave on the left channel and a high- passed noise on the right channel.
  - Solution: [here](DSP/solution_bo_01.dsp)

### Language Fundamentals
- Block Diagram Operations: `:`,`,`,`_`,`<:`,`:>`
  - [sequence](DSP/sequence02.dsp)
  - [parallel](DSP/parallel02.dsp)
  - [`_`: a cable](DSP/aCable.dsp)
  - [splitting](DSP/split.dsp)
  - [combining](DSP/combine.dsp)
- [Interactivity: A  basic slider](DSP/aSlider.dsp)
- Avoid Jitter with sliders: `si.smoo`
- Make large networks with one-liners: `par` and `seq`
- Context Management with `with`
- Difference Equations using `letrec`

### Other Examples
[ParallelResonators](DSP/ParallelResonators.dsp)
