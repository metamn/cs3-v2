<section id="portfolio-subtitle">
  <h3>Portfolio subtitle</h3>

  <article id="subtitle">
    <h3>Subtitle</h3>

    {% for p in description %}
      <p>{{ p }}</p>
    {% endfor %}
  </article>

  

  {% for image in images %}
    {% if loop.first %}
      {% include "../../organisms/work.swig" %}
    {% endif %}
  {% endfor %}


</section>
