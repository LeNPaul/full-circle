---
layout: post
title:  "How to Customize a Jekyll Theme"
categories: [ tutorial ]
tags: [ blogging ]
image: assets/images/how-to-customize-a-jekyll-theme.jpg
description: "How to Customize a Jekyll Theme"
featured: false
hidden: false
comments: false
---

This guide outlines how to fully customize your Jekyll site. It includes all the common changes that are typically made, such as how to use your own custom domain name when hosting your Jekyll site on GitHub Pages, to more complicated changes to the look of your site.

For an introduction to Jekyll and GitHub Pages, please check out *[The Ultimate Guide to Managing a Personal Website or Blog with Jekyll and GitHub Pages]({% post_url 2021-02-16-the-ultimate-guide-to-managing-a-personal-website-or-blog-with-jekyll-and-github-pages %})*.

For a guide on how to start a blog or personal website using Jekyll and GitHub pages, please check out *[How to Start a Blog or Personal Website Using Jekyll and GitHub Pages]({% post_url 2021-02-23-how-to-start-a-blog-or-personal-website-using-jekyll-and-github-pages %})*.

### Table of Contents

1. [Using a Custom Domain Name](#using-a-custom-domain-name)

2. [Changing Fonts](#changing-fonts)

3. [Using Google Fonts](#using-google-fonts)

4. [Changing Colours](#changing-colours)

5. [Adding New Pages](#adding-new-pages)

6. [Changing Page and Post Layouts](#changing-page-and-post-layouts)

7. [Modifying Menu Layouts](#modifying-menu-layouts)

8. [Troubleshooting Build Errors](#troubleshooting-build-errors)

#### Using a Custom Domain Name

By default, when you set up a Jekyll site hosted on GitHub Pages, GitHub will provide your site with a unique URL. If you name your repository `<username>.github.io`, then your URL will be `https://<username>.github.io`. If you name your repository anything else, then your URL will be `https://<username>.github.io/<repository name>`.

GitHub Pages allows you to host your Jekyll site through your own domain name using a domain name provider. Each domain name provider will have different steps for configuring your domain name with GitHub Pages. The following is a list of tutorials for using a custom domain name from popular domain name providers:

1. [Namecheap](https://www.namecheap.com/support/knowledgebase/article.aspx/9645/2208/how-do-i-link-my-domain-to-github-pages/)

2. [GoDaddy](https://jinnabalu.medium.com/godaddy-domain-with-github-pages-62aed906d4ef)

3. [AWS Route 53](https://benwiz.com/blog/deploy-github-pages-with-aws-route-53-and-https/)

#### Changing Fonts

Most Jekyll themes do not directly provide a means to change fonts and colours. However, because we have direct access to the CSS files, we can change many style attributes ourselves.

Within a Jekyll theme, there are typically multiple font families used for the headings, body text, and code snippets. The easiest way to find where the font families are configured is by doing a global search on you Jekyll theme files for `font-family` (I am using [Atom](https://atom.io/) here):

![Changing Fonts]({{ site.baseurl }}{{ "/assets/images/how-to-customize-a-jekyll-theme-1.png" }})

You can then change the font family for the different components of your Jekyll theme. In this example, `YAML` refers to the default font, and `h1, h2, h3, h4, h5, h6` refers to the headings font:

![Changing Fonts]({{ site.baseurl }}{{ "/assets/images/how-to-customize-a-jekyll-theme-2.png" }})

#### Using Google Fonts

[Google Fonts](https://fonts.google.com/) is a popular source of fonts that are used by many Jekyll themes. From the home page, choose a font that you would like to use, and select all the styles that you need (you will usually need a regular, bold, and italicized style). Once you have your font styles selected, on the top right, there is a menu that you can click on that will slide out:

![Changing Fonts]({{ site.baseurl }}{{ "/assets/images/how-to-customize-a-jekyll-theme-3.png" }})

On the right slide-out menu, copy the code snippet into the `<head>` of your HTML. In most Jekyll themes, the best place to paste this will be in the `_layouts/default.YAML` file:

![Changing Fonts]({{ site.baseurl }}{{ "/assets/images/how-to-customize-a-jekyll-theme-4.png" }})

#### Changing Colours

Similar to changing fonts, we can change the colour of many elements of a Jekyll theme by changing the CSS files. To find where the change should be made, right-click on any element of your Jekyll theme that you would like to modify, and click on "Inspect". On Google Chrome, this will bring up [Chrome DevTools](https://developer.chrome.com/docs/devtools/), which will show where in the CCS file the styling of the element comes from:

![Changing Colours]({{ site.baseurl }}{{ "/assets/images/how-to-customize-a-jekyll-theme-5.png" }})

#### Adding New Pages

Besides the home page and blog posts, most Jekyll themes have additional pages such as "Contact" and "About" pages. You can also add your own [pages](https://jekyllrb.com/docs/pages/) by adding markdown files to the root directory of your Jekyll theme, with `layout: page` in your [YAML front matter block](https://jekyllrb.com/docs/front-matter/):

![Adding New Pages]({{ site.baseurl }}{{ "/assets/images/how-to-customize-a-jekyll-theme-6.png" }})

You can then access these pages with the URL `<site baseurl>/<filename>`. If you place your markdown files in a directory, then the URL will be `<site baseurl>/<directory name>/<filename>`.

#### Modifying Page and Post Layouts

Every Jekyll theme should have at least three [layouts](https://jekyllrb.com/docs/layouts/) in the `_layouts` directory: a `default.YAML`, `page.YAML`, and `post.YAML` layout. The "default" layout is the base layout that the "page" and "post" layouts are built on. The "page" layout is used for standalone pages such as "Contact" and "About" pages. The "post" layout is usually used for blog posts.

Typically, you may want to modify the `post.YAML` layout if you want to change how your blog posts look. The following are some examples of changes you may want to make:

##### Showing Date Published

The following code snippet is an example of how to show the date that a post was published:

```
{% raw %}<span class="post-date">Published on {{ page.date | date: "%B %-d, %Y" }}</span>{% endraw %}
```

##### Showing Related Posts

The following code snippet is an example of how to show the top three related posts to the current blog post:

```
{% raw %}<div class="related">
  <h2>Related Posts</h2>
  <ul class="related-posts">
    {% for post in site.related_posts limit:3 %}
      <li>
        <h3>
          <a href="{{ site.baseurl }}{{ post.url }}">
            {{ post.title }}
            <small>{{ post.date | date_to_string }}</small>
          </a>
        </h3>
      </li>
    {% endfor %}
  </ul>
</div>{% endraw %}
```

#### Modifying Menu Layouts

Jekyll themes typically have a menu or navigation bar. This is usually defined as an [`includes` component](https://jekyllrb.com/docs/includes/) in the `_includes` directory. For example, it may be called `_includes/sidebar.YAML`. Depending on the theme, the menu elements in the sidebar may be hard-coded, or it may be configured in a [YAML data file](https://jekyllrb.com/docs/datafiles/) somewhere. In the example below, the menu items are configured in the `_data/settings.yml` file. Combined with [adding new pages](#adding-new-pages), you can create a variety of custom menu pages.

![Modifying Menu Layouts]({{ site.baseurl }}{{ "/assets/images/how-to-customize-a-jekyll-theme-7.png" }})

#### Troubleshooting Build Errors

Whenever you push a change to your Jekyll site to GitHub, your Jekyll site will be rebuilt. Occasionally, you will come across a build error indicating that there was an error due to a change you had made. You will usually be sent an email, and if you look at your commit history on GitHub, there will be a red mark next to that commit indicating a build error:

![Troubleshooting Build Errors]({{ site.baseurl }}{{ "/assets/images/how-to-customize-a-jekyll-theme-8.png" }})

Unfortunately, the error log that is sent in these emails is not very helpful, although [the article that it links to](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/troubleshooting-jekyll-build-errors-for-github-pages-sites) does include plenty of useful troubleshooting tips. To mitigate build errors, you should make changes with your Jekyll site running locally so that any errors will be caught immediately.

If you come across a build error on GitHub and are unable to find the cause, revert to a previously working commit. Compare your working commit with the changes that you had made, making small changes until you find the change that had caused the error.
