---
layout: page
title: Contact
---
<section>
  <h1>Contact</h1>
  <p>Feel free to contact me <a href="mailto:l.nguyen.paul@gmail.com" target="_blank">through my email</a> or <a href="https://twitter.com/intent/tweet?text=%40paululele" target="_blank">tweet at me</a>.</p>
  <p>I also like being followed.</p>
  <div class="social-media">
      <nav>
        {% for item in site.data.settings.social %}
          <a href="{{ item.link }}" target="_blank"><i class="fa fa-{{ item.icon }}" aria-hidden="true"></i></a>
        {% endfor %}
      </nav>
  </div>
</section>
