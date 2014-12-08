{% set menu = [
  {
    title: 'About',
    url: 'about',
    text: 'About'
  },
  {
    title: 'Contact',
    url: 'contact',
    text: 'Contact'
  },
  {
    title: 'Styleguide',
    url: 'styleguide',
    text: 'Styleguide'
  }
  ]
%}

<section id="menu">
  <h3>Menu</h3>

  {% set icons = {title: "Links", icons: menu } %}
  {% include "../molecules/icons.swig" %}
</section>
