{% import "../atoms/macros/classname.swig" as c %}
{% set classname = c.classname(icons.title) %}

<nav id="{{ classname }}" class="icons">
  <h3>{{ icons.title }}</h3>

  {% for icon in icons.icons %}
    {% include "../atoms/icon.swig" %}
  {% endfor %}
</nav>
