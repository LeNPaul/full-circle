---
layout: page
title: Projects
---
<section>
  <div class="project-container">
    {% for project in site.data.settings.projects %}
      <a href="{{ site.github.url }}/{{ project.file }}">
        <div class="project-unit" style="background-image: url({{ site.github.url }}/assets/img/{{ project.image }})">
          <div class="project-overlay">
            <h2>{{ project.name }}</h2>
            <p>{{ project.blurb }}</p>
          </div>
        </div>
      </a>
    {% endfor %}
  </div>
</section>
