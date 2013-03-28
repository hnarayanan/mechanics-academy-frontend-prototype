---
title: Scientific computing as a service
date: 2013-03-28 09:47 +01:00
tags: Simulation Demos, thinkbot
---

After a week of hard work, I've separated one of the core aspects of
Mechanics Academy&mdash;its compute server&mdash;into a separate
service with a clean, RESTful API. This service is called
<a href="http://thinkbot.net.">thinkbot</a>, which I think is a pretty
cute name!

I believe this was an important step to take, as thinkbot can now
act as an easy-to-use scientific computing service that can meet
general needs, well beyond those of Mechanics Academy. But much more on
all that later.

With thinkbot, one can now do the following:

1. Submit a job (in Python; R and Octave support planned for the future):

   `curl -X POST http://api.thinkbot.net/jobs/ -F"code=<some_file.py" [other metadata] -u username[:password]`

2. Retrieve info about the <a href="http://api.thinkbot.net/jobs/3/">job's status</a>:

   `curl -X GET http://api.thinkbot.net/jobs/3/`

3. Retrieve results based on what was requested in the metadata along
   with the submitted code.

   `curl -X GET http://api.thinkbot.net/results/3/u.vtk`

Mechanics Academy communicates with thinkbot via AJAX, and can send
it scientific computing jobs and retrieve results. Check it out:

<p><a href="/demo/thinkbot-api/"><img src="/img/blog/thinkbot-api-demo.png" class="img-polaroid" alt="thinkbot api demo" title="Scientific computing as a service"></a></p>

More documentation, logins and <em>actual science lessons using all this
technology</em> coming soon&trade;.
