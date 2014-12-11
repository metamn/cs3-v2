{% import "../atoms/macros/classname.swig" as c %}
{% set classname = c.classname(title) %}

<nav id="{{ classname }}">
  <h3>{{ title }}</h3>

  {% for circle in circles %}
    {% set text = circle.title %}
    {% include "../atoms/circle.swig" %}
  {% endfor %}
</nav>
