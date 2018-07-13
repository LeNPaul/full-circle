---
layout: page
title: Projects
---
<section>
  <h1>Main Projects</h1>
  <div class="project-container">
    {% for project in site.data.settings.main-projects %}
      <a href="{{ site.github.url }}/{{ project.file }}">
            <h2>{{ project.name }}</h2>
            <p>{{ project.blurb }}</p>
      </a>
    {% endfor %}
  </div>
</section>
<!--
<section>
  <h1>Side Projects</h1>
  <div class="project-container">
    {% for project in site.data.settings.side-projects %}
      <a href="{{ site.github.url }}/{{ project.file }}">
            <h2>{{ project.name }}</h2>
            <p>{{ project.blurb }}</p>
      </a>
    {% endfor %}
  </div>
</section>
-->
