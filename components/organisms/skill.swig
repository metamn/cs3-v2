{% import "../atoms/macros/classname.swig" as c  %}
{% set classname = c.classname(skill.title) %}

<article id="{{ classname }}" class="skill">
  <h3>{{ skill.title }}</h3>

  <div class="description">
    <p>
      {{ skill.description | safe }}
    </p>
  </div>

  {% include "../molecules/graph.swig" with { graph: skill.graph } %}

  <div class="button">
    {% include "../atoms/link.swig" with { link: skill.link } %}
  </div>
</article>
