---
layout: page
title: Projects
---
<section>
  <h1>Main Projects</h1>
  <div class="project-container">
    {% for project in site.data.settings.main-projects %}
      <a href="{{ site.github.url }}/{{ project.file }}">
        <!--<div class="project-unit" style="background-image: url({{ site.github.url }}/assets/img/{{ project.image }})">
          <div class="project-overlay">-->
            <h2>{{ project.name }}</h2>
            <p>{{ project.blurb }}</p>
          <!--</div>
        </div>-->
      </a>
    {% endfor %}
  </div>
</section>

<section>
  <h1>Side Projects</h1>
  <div class="project-container">
    {% for project in site.data.settings.side-projects %}
      <a href="{{ site.github.url }}/{{ project.file }}">
        <!--<div class="project-unit" style="background-image: url({{ site.github.url }}/assets/img/{{ project.image }})">
          <div class="project-overlay">-->
            <h2>{{ project.name }}</h2>
            <p>{{ project.blurb }}</p>
          <!--</div>
        </div>-->
      </a>
    {% endfor %}
  </div>
</section>
