<aside>
  <h3>Slide</h3>

  <div class="description">
    {{ skill.description }}
  </div>

  {% include "../../molecules/graph.swig" with { graph: skill.graph } %}
  {% include "../../atoms/link.swig" with { link: skill.link } %}
</aside>
