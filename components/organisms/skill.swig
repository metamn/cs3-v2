{% import "../atoms/macros/classname.swig" as c  %}
{% set classname = c.classname(skill.title) %}

<article id="{{ classname }}" class="skill">
  <h3>{{ skill.title }}</h3>


  {% include "../molecules/circles.swig" with { title: skill.title, circles: skills } %}

  {% if skill.title == "UI" %}{% include "skills/ui.swig" %}{% endif %}
  {% if skill.title == "UX" %}{% include "skills/ux.swig" %}{% endif %}
  {% if skill.title == "RWD" %}{% include "skills/rwd.swig" %}{% endif %}
  {% if skill.title == "CMS" %}{% include "skills/cms.swig" %}{% endif %}
</article>
