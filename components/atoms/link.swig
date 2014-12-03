{% import "../atoms/macros/classname.swig" as c  %}
{% set classname = c.classname(title) %}

<a href="{{ url | default(site.url + '/' + classname)}}" title="{{ title }}">
  {% block link %}
    {{ text | default(title) | safe }}
  {% endblock %}
</a>
