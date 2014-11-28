{% import "../atoms/macros/classname.swig" as c  %}
{% set classname = c.classname(icon.title) %}

<div id="{{ classname }}" class="icon">
  {% if icon.position == 'after' %}
    <span class="text">{{ icon.text }}</span>
    <span class="icon-{{ icon.glyph }}"></span>
  {% else %}
    <span class="icon-{{ icon.glyph }}"></span>
    <span class="text">{{ icon.text }}</span>
  {% endif %}
</div>
