<div class="description">
  {{ skill.description | safe }}
</div>

{% include "../../molecules/graph.swig" with { graph: skill.graph } %}

<div class="button">
  {% include "../../atoms/link.swig" with { link: skill.link } %}
</div>
