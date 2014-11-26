<section id="works">
  <h3>Works</h3>

  {% for image in images %}
    {% include "../organisms/work.swig" %}
  {% endfor %}
</section>
