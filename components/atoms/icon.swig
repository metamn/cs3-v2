{% import "../atoms/macros/classname.swig" as c  %}
{% set classname = c.classname(icon.title) %}

<div id="{{ classname }}" class="icon">
  {% if icon.url %}<a href="{{ icon.url }}" alt="{{ icon.title }}">{% endif %}
  {% if icon.email %}<a href="mailto:{{ icon.email }}" alt="{{ icon.title }}">{% endif %}

  {% if icon.position == 'after' %}
    <span class="text">{{ icon.text }}</span>
    <span class="glyph icon-{{ icon.glyph }}"></span>
  {% else %}
    <span class="glyph icon-{{ icon.glyph }}"></span>
    <span class="text">{{ icon.text }}</span>
  {% endif %}

  {% if (icon.url || icon.email) %}</a>{% endif %}
</div>
