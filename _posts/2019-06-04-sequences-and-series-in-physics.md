---
layout: post
title: "Sequences and Series in Physics"
category: blog
---

When I first learned about sequences and series in calculus class in my first year of university, I initially thought that this was a niche topic that was not really useful outside of mathematics. It wasn't until my later years in university when I took more advanced physics classes that I saw how useful sequences and series are in physics, especially Taylor Series.

The main idea with [Taylor Series](https://en.wikipedia.org/wiki/Taylor_series) is that you can represent any analytic function as an infinite sum of terms calculated from the values of the function's derivatives at a single point.

> Any function that can be represented as a Taylor Series can be approximated using a finite number of terms of its Taylor Series, typically by only looking at the first few terms in the series.

What this means is, given a complicated function, you can approximate what that function will look like near a given point, typically by using a line or a parabola:

<img alt="Hooke's Law" src="/assets/images/sequences-and-series-in-physics-1.png" style="width:250px; margin: auto; display: block;"/>

Notice how the dotted line fits pretty nicely with the red line near the origin. Think of the dotted line as a complicated, nasty function, and the red line as an approximation of that complicated, nasty function, that works pretty well if you stay close to the origin. Where do you get the red line from?

It's the first two terms of the Taylor Series, which is essentially a line:

<img alt="Equation 1" src="/assets/images/sequences-and-series-in-physics-2.png" style="width:500px; margin: auto; display: block;"/>

This is a very powerful idea, because often times in physics, the best we can do is approximate. The Taylor Series representation of a function is a tool that allows us to approximate many things, and in many cases (like above, with the complicated, nasty function) simplifies things greatly, without sacrificing too much accuracy.

You will definitely come across this if you take a classical mechanics class, most notably when you study Hooke's Law again. If you look at the graph above, you will notice that it is a graph plotting the force exerted by a Hookean spring as a function of its displacement from its equilibrium position.

The dotted line is how the spring actually behaves, but it is a very complicated and nasty function (in this case it looks like a cubic function, but many times we are not that lucky), and the red line represents [Hooke's Law](https://en.wikipedia.org/wiki/Hooke's_law), which is simply the second term of the Taylor Series representation of the dotted line function:

<img alt="Equation 2" src="/assets/images/sequences-and-series-in-physics-3.png" style="width:500px; margin: auto; display: block;"/>

If we take the constant to be at the origin, you get Hooke's Law (the first term is a constant we can ignore in this case because it is zero, and the factor in front of the second term is equal to -k, which we determine experimentally):

<img alt="Equation 3" src="/assets/images/sequences-and-series-in-physics-4.png" style="width:200px; margin: auto; display: block;"/>

This is only one, albeit an important application of sequences and series in physics.

If you take an introductory quantum mechanics class, you will learn how to use [power series](https://en.wikipedia.org/wiki/Power_series) to solve the Schrödinger equation, in the context of a [quantum harmonic oscillator](http://physics.gmu.edu/~dmaria/590%20Web%20Page/public_html/qm_topics/harmonic/).
