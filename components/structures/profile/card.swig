{% import "../../atoms/macros/figure.swig" as f  %}

{% set images = [
    {
      name: "Csongor Bartus",
      description: "User interface and experience designer",
      mobile: "avatar-2x.png",
      tablet: "avatar-3x.png",
      laptop: "avatar-3x.png",
      desktop: "avatar-4x.png"
    }
  ]
%}


{% set info = {
  name: "Csongor Bartus",
  skills: "UI / UX / RWD / CMS",
} %}


{% set contact = [
    {
      title: "Send me an email",
      glyph: "mail",
      type: "email",
      email: "bartus.csongor@gmail.com",
      text: "bartus.csongor@gmail.com"
    },
    {
      title: "Contact via Twitter",
      glyph: "twitter",
      url: "http://twitter.com/metamn",
      text: "metamn"
    },
    {
      title: "Code samples on Github",
      glyph: "mark-github",
      url: "http://github.com/metamn/its-csongor",
      text: "Code samples on Github"
    },
    {
      title: "Inspiration on Tumblr",
      glyph: "tumblr",
      url: "http://metamn.tumblr.com",
      text: "Inspiration on Tumblr"
    }
  ]
%}

<article id="card">
  <h3>Card</h3>

  {{ f.figure(0, images[0].name) }}

  <aside>
    <h3>Personal info</h3>

    <div class="name">
      {{ info.name }}
    </div>

    <div class="skills">
      {{ info.skills }}
    </div>
  </aside>

  {% set icons = {title: "Contact", icons: contact } %}
  {% include "../../molecules/icons.swig" %}

</section>
