---
layout: page
title: Blog
---

<section>
  <div class="blog-container">
    {% for post in site.posts %}
      <div class="blog-unit"><a href="{{ site.github.url }}{{ post.url }}">
        <h1>{{ post.title }}</h1>
          <p>{{ post.content | strip_html | truncate: 350 }}</p></a>
      </div>
    {% endfor %}
  </div>
</section>
