---
layout: post
title: "Saving Time With Task Automation"
---

With our digital lives slowly becoming our regular lives, automation has become a term that promises to save us time. Automation can come in many forms, and can mean different things in different contexts. Once the majority of our information became available in digital form, it became easier to automate tasks such as storing and searching for information. Depending on how this is implemented, this can save us a lot of time, but it can also introduce scenarios that require some manual work, in some cases negating the time-saving benefits.

### The Problem

For example, as part of my job, I need to keep track of professional services hours and how I allocate my time between different projects, both internal and with clients. At my job, we use a tool called [Harvest](https://www.getharvest.com/) to input our hours. Needless to say, this was a part of my job that I did not particularly enjoy, and would always put off until I absolutely had to do it at the end of the month.

Unfortunately, this meant that I would spend a lot of time inputting my hours, as I had to go through my calendar and emails in order to remember how I spent my time. This was time consuming, and a real chore. Although I tried to input my hours daily, as I utilize them, it was always something that I would forget or procrastinate on. I found it too much trouble to open the Harvest webpage and put in my hours.

### A Potential Solution

I soon came across a method that would save me time. I was always a practitioner of the Pomodoro Technique. I used to use [Pomotodo](https://pomotodo.com/), which had allowed me to not only set Pomodoro timers, but also to keep track of what I did with each Pomodoro. This provided another way to keep track of my hours, by going through my Pomodoros and counting how many Pomodoros I spent for each task. To me, this was a small change that was easy to implement without making any significant changes to my Pomodoro workflow.

This was a manual activity that was begging to be automated. For a long time, I put this off, because I thought that the initial trouble of setting up this automation was not worth it. I always thought that task automation was more trouble to set up initially than it was worth.

With the pandemic in full swing, I had more time, and I searched for a solution.

I came across [Clockify](https://clockify.me/), which was a time tracker that also had a Pomodoro timer built in. I can keep track of how I spent my time through time entries, which were divided into roughly 25-minute time blocks. This was perfect.

I began tracking my hours in Clockify and using the Pomodoro timer, which was a natural transition. I now needed a means to automate the process of taking the tasks. Incidentally, my job involves building IT integrations, so I was in a good position to build a custom integration for this workflow.

### What is Integration

Simply put, [integration](https://www.redhat.com/en/topics/integration/what-is-integration) in the context of IT is the connection of different systems that were not originally meant to connect to each other in ways that improve efficiency and productivity.

In the field of healthcare IT that I work in, this can mean anything from connecting laboratory information systems (LIS) to electronic medical record (EMR) systems, to connecting databases with various APIs.

In my case, this means connecting Clockify with Harvest, so that the information that is inputted into Clockify is sent to Harvest so that I do not need to enter the same information into two different places.

### Building the Integration

Implementing an integration requires some kind of middleware to facilitate the integration. This can be as simple as a script that is run on a regular basis using some kind of scheduler, or an integration engine that provides a more complete middleware integration experience. For this project, I decided to use an integration engine called [Iguana](https://www.interfaceware.com/iguana), which provides a [Lua](https://www.lua.org/) scripting environment to perform integrations.

Additionally, building an integration requires some kind of interface between the two systems to transfer data and perform actions. Most web applications have comprehensive REST APIs that provide essentially the same functionality as the user interface and act as this interface. Luckily, both [Clockify](https://clockify.me/developers-api) and [Harvest](https://help.getharvest.com/api-v2/) have well-documented APIs.

With all of those requirements for an integration met, the next step was to design the integration workflow.

### Notes

* Compare times saved for putting time into Harvest vs. automating or making it easier to put in time

* Compare times saved for putting activities into Pipedrive

* Keyboard shortcuts

* No longer using this integration because I no longer use Clockify to do my Pomodoros, and do not track what was done during a Pomodoro
