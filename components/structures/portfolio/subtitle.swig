<section id="portfolio-subtitle">
  <h3>Portfolio subtitle</h3>

  {% for image in images %}
    {% if loop.first %}
      {% include "../../organisms/work.swig" %}
    {% endif %}
  {% endfor %}

  <article id="subtitle">
    <h3>Subtitle</h3>

    <p>{{ subtitle }}</p>
  </article>
</section>
