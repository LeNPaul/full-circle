---
layout: post
title: "Improving Support Workflow Through Human-Centered Design Part II"
category: blog
---

[In my previous post]({% post_url 2019-05-21-improving-support-workflow-part-1 %}), I gave an introduction to the problem that I was trying to solve, I had talked about the process that I would take in solving that problem, and then I began going through that process and describing what I was doing at each step. If you have not [read part I yet, then please check that out first]({% post_url 2019-05-21-improving-support-workflow-part-1 %}), as this article is a continuation of part I.

## Prototype

Setting up a prototype was simple — all I had to do was [create a new board in Trello](https://trello.com/guide/create-a-board), and set up lists for each major state outlined in *Brainstorm*. As support tickets came in, I would assign them to myself and create a card in Trello to represent that support ticket. I would then move the card between the different lists, based on what state the support ticket was in.

![What the Trello board looked like]({{ site.baseurl }}{{ "/assets/images/improving-support-workflow-part-2.png" }})

I gave this a try for a few weeks, and I immediately noticed that I felt less stressed, since I have a high-level view of all of the support tickets that I was working on at a given time, and what states they were all in. I liked the ease of which I could move cards around between different lists.

**More importantly, I could rest assured that I would not be missing any tickets that I was working on, and that I only had to worry about what was on this Trello board.**

The last step to improve this even further was to automate the creation of cards, as well as automatically setting the status of each support ticket in FogBugz through the Trello user interface, without having to go into FogBugz and manually setting the status of the FogBugz tickets (which was one of the pain points outlined during the *Discovery* step).

### Integrating FogBugz with Trello

Rather than having to manually create a Trello card myself every time a new support ticket came in and was assigned to myself, I wanted to automatically generate the Trello card instead. The created card should have information such as the ticket number, the subject line of the support ticket, as well as a link that would take me directly to the FogBugz page for the support ticket.

To do this, I implemented some scripting in a programming language called [Lua](https://www.lua.org/), and I used an [integration engine called Iguana](https://www.interfaceware.com/iguana-translator.html) to run the script on a regular basis (there are other ways to do this, but I work with Iguana on a daily basis as part of my job, so it was the best tool at the time to use).

Fortunately, both [Trello](https://developers.trello.com/) and [FogBugz](https://help.manuscript.com/the-fogbugz-api) have fairly comprehensive APIs and documentation, which were more than adequate to implement the kind of workflow I was looking for.

The high-level scripting workflow looked like this:

1. Use the FogBugz API to get all new tickets that were assigned to me, and create a card in Trello in the “Incoming (Need to Respond)” list using the Trello API. Each card would contain the FogBugz ticket number, subject line, and a link to the ticket in FogBugz.

2. If the card was moved to the “Responded with solution” list (the Trello API would be used to regularly poll this list for new cards), then change the status of the ticket in FogBugz to “Resolve (Responded)” using the FogBugz API.

3. If the card was moved to the “Closed” list (the Trello API would be used to regularly poll this list for new cards), then change the status of the ticket on FogBugz to “Closed” using the FogBugz API.

Automating the workflow this way also helped to solve one of the big problems that I was experiencing with the original workflow outlined in *Discovery*, which was that of having to use the FogBugz user interface to change the status of support tickets. This way, I would never have to actually interact with the FogBugz interface, and even if I did, the FogBugz ticket was linked in the Trello card itself which made finding the ticket significantly easier.

## Repeat

True human-centered design is an iterative process, and typically after the first iteration, there is further user testing done, after which the entire process is repeated again with the newfound insights gathered from the user testing.

In this case, the user testing consisted of me using the system that I developed over the course of a few months, where I used this system on a daily basis. During that time, I did make a few changes that improved the usability of my system.

One thing that was improved was to add a due date on the Trello cards. If I need to follow-up on a support ticket after two days, then marking the due day to be in two days would help me keep track of which tickets needed a follow-up, ensuring I don’t fall behind on any of the tickets.

The rest of the changes made had more to do with the code itself, and less with the new workflow (this will be for another article!).

## Results & Lessons Learned

I used this system for many months, before my support workload decreased to the point where the system that I developed was a bit of an overkill. Although it would have been perfectly fine to continue using this system, it seemed to me that below a certain threshold of support tickets being managed (i.e. anything less than taking on the majority of incoming support tickets on a daily basis), it was really simpler to just use the old workflow described in *Discovery*.

During the months that I did use my system though, I was significantly more organized than I was before. Many of the pain points that I had described in *Discovery* were solved using this system.

I realized afterwards that what made this system work well was that I was no longer depending on my memory for keeping track of support tickets — every incoming ticket was automatically tracked, in one place, without having to keep track of anything in memory. As mentioned in [David Allen’s Getting Things Done system]({% post_url 2017-10-12-the-five-pillars-of-getting-things-done %}), one of the big things that hinders our productivity is when we store things in our mind that should really be written down.

I ended up showing this system to my colleagues and boss, who were all impressed with the system, and we ended up incorporating different aspects of this system into the current support workflow.

Even though we ended up not using Trello to keep track of the tickets (we used [Basecamp](https://basecamp.com/) instead, as that was a tool our team was already using), the spirit of this system remained in place.

## Conclusion

This little project that I did was an experiment that I did on my own time out of curiosity. I had a lot of fun pretending to be a UX designer on my spare time, and it really did give me a lot of appreciation as to how important good UX design is, in any discipline. It’s unfortunate, especially in the IT world how under-appreciated UX design can be, but I hope that after reading this, you might have a different perspective.

Thank you for reading!
