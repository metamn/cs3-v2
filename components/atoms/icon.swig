{% import "../atoms/macros/classname.swig" as c  %}
{% set classname = c.classname(icon.title) %}

<div id="{{ classname }}" class="icon">
  <span class="icon-{{ icon.icon }}"></span>
</div>
