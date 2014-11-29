<article id="portfolio-technologies">
  <h3>Portfolio technologies</h3>

  {% for technology in technologies %}
    {% if loop.first %}<ul>{% endif %}
    <li>{{ technology | safe }}</li>
    {% if loop.last %}</ul>{% endif %}
  {% endfor %}
</article>
