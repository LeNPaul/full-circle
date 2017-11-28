---
layout: page
title: 'applepy'
---

<h1 class="page-title">{{ page.title }}</h1>

> "If you wish to make apple pie from scratch, you must first create the universe" - Carl Sagan

Inspired by one of Carl Sagan's most famous quotes, applepy is an [n-body simulation](https://en.wikipedia.org/wiki/N-body_simulation) program based in Python that aims to simulate many of the processes that occurred in the early stages of the universe.

Shortly after the Big Bang, there was an abundance of material scattered across the universe. As the universe expanded, this material began to interact with with itself through forces such as gravity, eventually forming the stars and galaxies that we see today. The behaviour of this material does not have an exact solution (unlike calculating the trajectory of a ball thrown on earth, for example), and so scientists run n-body simulation experiments, such as the [Millennium Run](https://en.wikipedia.org/wiki/Millennium_Run), in order to best study how the early universe evolved.

[![Big Bang](https://upload.wikimedia.org/wikipedia/commons/6/6f/CMB_Timeline300_no_WMAP.jpg)](https://en.wikipedia.org/wiki/Big_Bang)

This project is currently in the early development stages, and there are plans to do a complete rebuild of this project, from the ground up. I intend to eventually make this into a fully featured physics engine for running physics simulations, built into a full-stack web application.

Below is what one of the very first versions looked like (those little white dots represent point masses that move based on how the force of gravity affects the masses):

[![applepy]({{ "/assets/img/applepy-old.jpg" }})](https://github.com/LeNPaul/applepy)

So far, this program is able to inefficiently do basic n-body simulations, using the [Euler method](https://en.wikipedia.org/wiki/Euler_method) of solving for the equations of motion. Check out the [GitHub repository](https://github.com/LeNPaul/applepy) for this project for the source code, and some additional information.
