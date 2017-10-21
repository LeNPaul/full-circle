---
layout: page
title: Blog
---

<section>
  <div class="blog-container">
    {% for post in site.posts %}
      <div class="blog-unit">
        <h1><a href="{{ site.github.url }}{{ post.url }}">{{ post.title }}</a></h1>
          <p>{{ post.content | strip_html | truncate: 350 }}</p>
      </div>
    {% endfor %}
  </div>
</section>
