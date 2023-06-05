# Music Hackspace Workshop: *Creating VSTs and more using FAUST*


## Workshop Structure

### introduction

- Motivation: Why FAUST
- [my first FAUST program](noise.dsp)
- Getting Help:
  - [The Manual](https://faustdoc.grame.fr/manual/introduction/)
    - [Especially the Syntax Section](https://faustdoc.grame.fr/manual/syntax)
  - [Libraries Documentation](https://faustlibraries.grame.fr/)
- [Web IDE](https://faustide.grame.fr/) Overview
- a word about the [FAUST Library](https://github.com/grame-cncm/faustlibraries)
- [Sequential Composition of effects](sequential01.dsp)
- Common Errors:
  - [`ERROR : syntax error, unexpected ....`](commonErrors01.dsp)
  - [`ERROR : sequential composition ....`](commonErrors02.dsp)
- [Parallel Composition](parallel01.dsp)
- [assigning variables to keep things simple](variables.dsp)
- *Breakout session 01*: Build a program that plays a 100 Hz sine-wave on the left channel and a high- passed noise on the right channel.
  - Solution: [here](solution_bo_01.dsp)

### Language Fundamentals
- Block Diagram Operations: `:`,`,`,`_`,`<:`,`:>`
  - [sequence](sequence02.dsp)
  - [parallel](parallel02.dsp)
  - [`_`: a cable](aCable.dsp)
  - splitting
  - combining
