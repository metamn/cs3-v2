<section id="portfolio-images">
  <h3>Portfolio images</h3>

  {% for image in images %}
    {% include "../../organisms/work.swig" %}
  {% endfor %}
</section>
