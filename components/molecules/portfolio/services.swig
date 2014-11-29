<article id="portfolio-services">
  <h3>Portfolio services</h3>

  {% for service in services %}
    {% if loop.first %}<ul>{% endif %}
    <li>{{ service | safe }}</li>
    {% if loop.last %}</ul>{% endif %}
  {% endfor %}
</article>
