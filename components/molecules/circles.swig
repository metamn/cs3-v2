<nav class="circles">
  <h3>{{ title }}</h3>

  {% for circle in circles %}
    {% set text = circle.title %}
    {% include "../atoms/circle.swig" %}
  {% endfor %}
</nav>
