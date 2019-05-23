---
layout: post
title: "Improving Support Workflow Through Human-Centered Design Part I"
category: blog
---

![Stock Photo]({{ site.baseurl }}{{ "/assets/img/human-centered-design-part-1.jpeg" }})

Part of my job at work involves taking on support tickets that come in from our clients. This entails taking responsibility for the ticket, responding to it in a timely matter, following through until it is resolved, and ensuring the client is satisfied. All of this is done in addition to other projects that I do at work.

Typically, this duty is shared amongst everyone in my team of five people, including sometimes my manager. Everyone shares the tickets based on who is most available. Shortly after I started working at my company though, one person on my team moved to another team, and for a period of time, almost half of the team was away on business trips or vacation.

It was during this time that my time management and organization abilities were stretched to their limits. It was a challenge that volunteered for, and I enjoyed taking on. Based on the lessons that I learned, I made it an initiative to improve the support workflow that we had in place using human-centered design.

### What is Human-Centered Designed?

According to Design Kit, Human-Centered Design can be summarized as follows:

> It’s a process that starts with the people you’re designing for and ends with new solutions that are tailor made to suit their needs. Human-centered design is all about building a deep empathy with the people you’re designing for; generating tons of ideas; building a bunch of prototypes; sharing what you’ve made with the people you’re designing for; and eventually putting your innovative new solution out in the world.

In other words, it is creating something that is optimized for human users. This may sound like an obvious thing that should be a given, but you would be surprised at how many systems out there fail to be user-friendly, and how difficult it is to create something that is truly human-centered.

## The Process

I followed a process very similar to the one that was outlined also by Design Kit:

> Human-centered design consists of three phases. In the Inspiration Phase you’ll learn directly from the people you’re designing for as you immerse yourself in their lives and come to deeply understand their needs. In the Ideation Phase you’ll make sense of what you learned, identify opportunities for design, and prototype possible solutions. And in the Implementation Phase you’ll bring your solution to life, and eventually, to market. And you’ll know that your solution will be a success because you’ve kept the very people you’re looking to serve at the heart of the process.

The actual process that I followed looked something like this:

1. **Discover:** define and understand the problem using empathy to identify needs.

2. **Brainstorm:** use the knowledge gained from the discovery process to come up with ideas.

3. **Prototype:** communicate solutions to problems using insights learned

4. **Repeat.**

## Discovery

### Original Workflow
The original support workflow was as follows:

1. Client sends an email to a designated support email.

2. A support ticket is generated in FogBugz.

3. Assign the ticket to yourself on FogBugz using a custom-built web application everyone on our team has access to.

4. Work on the ticket, and respond to the client.

5. If the ticket has been resolved, then mark it “Resolve (Responded)” on FogBugz.

6. Once the client is satisfied, then mark the ticket “Closed”.

Although the original workflow worked just fine, there were a few things that could have been improved on. For example, once the support ticket has been assigned to yourself in step 3, all changes to the support ticket must be done on FogBugz, which doesn’t have a very user-friendly interface, and can get tedious when making changes to the state of the support tickets.

Once a ticket was assigned to yourself and marked “Resolved (Responded)” on the web application, you would have to find the ticket again on FogBugz by searching based on the ticket’s identification number, if you wanted to close the ticket. It does not remain shown on the web application, so there is no way to keep track of all of the tickets that you are working on from the beginning of the workflow to the very end. In addition, once a ticket has been closed, it becomes very hard to find the ticket again.

**More importantly, the steps in the original workflow do not fully reflect the full process that typically takes place when you are working on a support ticket. Between steps 4 and 5, a number of different things can happen.**

In an ideal situation, a client opens up a support ticket, you respond to it in one email with the right solution, the client responds saying that the issue is resolved, and you close the support ticket. Most of the time, this is not the case, and with the original workflow, it is very easy to quickly become disorganized and overwhelmed as the volume of tickets increases.

Typically, there is a lot of back and forth between yourself and the client. Usually, the first email from the client does not have all of the information that you need, and one or more additional emails must be exchanged before you are able to respond with a solution. Sometimes, many solutions need to be offered before there is one that works, or there is additional work required either by the client or by my team.

The support workflow is very non-linear, and can be cyclical at times.

Being able to visually track support tickets as they come in and are being worked on will not only allow for better organization, but will improve productivity, as you can be assured that you are on top of the support tickets and are working on the most important ones first.

## Brainstorm

Based on my experience being the main person in charge of support for a few months, I have found that when a support ticket is opened by a client, there are only five major states that it can be in:

1. Incoming (need to respond)

2. Need more information (sent email ask for information, waiting for response, follow-up after a day)

3. Have enough information (sent email to acknowledge we received the inquiry, currently investigating)

4. Responded with solution (waiting for response, follow-up after 2 days to see if resolved)

5. Closed

Every support ticket that comes in can fit into these 5 categories, and typically, during the lifecycle of a given support ticket, it may go between states two to four many times before finally being closed. So whatever improvement that I would want to make needs to have a way to easily show what state a ticket is in, as well as all of the tickets that are currently active and being worked on.

This solution would probably have each of the 5 categories as a list, and I would be placing each support ticket under one those categories, moving them around as the status of the ticket changed.

At first, I tried just writing down all of the support tickets that I am working on in a notebook (I tried both physical and digital), but I found that it was difficult to keep track of tickets still, especially when there was a high volume. Support tickets were too dynamic, and at a given time there may be many tickets in many different states.

Fortunately, I have been a long-time user of Trello, a web application based around the Kanban system of project and task management, and realized that it would be a perfect tool to use for my prototype.

### To be continued in part II
