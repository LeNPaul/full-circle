---
layout: post
title: "Analysing Data From Olympic Weightlifting Athletes"
---

Olympic weightlifting is a an Olympic sport where an athlete competes by performing two lifts: the [snatch](https://www.youtube.com/watch?v=3jdGt9cftyU) and the [clean & jerk](https://www.youtube.com/watch?v=PRlJWcPzg-8). It's a sport that I have developed an interest in over the past year. Being the nerd that I am, I was interested in doing some data analysis on Olympic weightlifting athletes.

Using data gathered from the [International Weightlifting Federation's](http://www.iwf.net/) website, I generated a few graphs using Python's [Matplotlib](https://matplotlib.org/) library comparing a number of variables affecting a weightlifter's results at the Olympics.

There were two things that I wanted to analyze: how a weightlifter's bodyweight compares with their total weight lifted, and the ratio between their snatch and clean & jerk lifts.

### Total Weight Lifted vs. Bodyweight

![Total vs. Bodyweight]({{ site.baseurl }}{{ "/assets/images/analysing-data-from-olympic-weightlifting-athletes-1.png" }})

The above plot shows the relationship between a weightlifter's bodyweight, and their total weight lifted, plotted on a logarithmic scale. It's pretty clear that this relationship isn't linear, but more logarithmic (although it still deviates from a logarithm).

This is interesting, because I believe the [Sinclair Coefficient](http://www.iwf.net/weightlifting_/sinclair-coefficient/), which offers a way of comparing lifters in different weight categories, also fundamentally is a logarithmic equation. This is most likely how it is derived, shown graphicaly.

### Snatch vs. Clean & Jerk

![Snatch to Clearn & Jerk Ratio]({{ site.baseurl }}{{ "/assets/images/analysing-data-from-olympic-weightlifting-athletes-2.png" }})

It's common knowledge that there is a strong linear relationship between a weightlifter's snatch and clean & jerk lifts, where the snatch should be around 80% of the clean & jerk. The above plot just shows this more clearly. The line of best fit for this dataset is 81 +/- 3%, which fits nicely with anecdotal knowledge.
