{% import "../atoms/macros/classname.swig" as c  %}
{% set classname = c.classname(link.title) %}

<a href="{{ link.url | default(site.url + '/' + classname)}}" title="{{ link.title }}">
  {% block link %}
    {{ text | default(link.title) | safe }}
  {% endblock %}
</a>
