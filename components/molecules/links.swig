{% import "../atoms/macros/classname.swig" as c  %}
{% set classname = c.classname(links.title) %}

<nav id="{{ classname }}">
  <h3>{{ links.title }}</h3>

  {% for link in links.links %}
    {% include "../atoms/link.swig" %}
  {% endfor %}
</nav>
