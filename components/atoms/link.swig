{% import "../atoms/macros/classname.swig" as c  %}
{% set classname = c.classname(title) %}

<a href="{{ url | default(site.url + '/' + classname)}}" title="{{ title }}">{{ text | default(title)}}</a>
