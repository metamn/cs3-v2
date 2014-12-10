<div class="graph">
  {% for item in graph %}
    <div class="item">
      <span class="title">{{ item.title }}</span>
      <span class="years" data-size="{{ item.years }}">{{ item.years }} yrs</span>
    </div>
  {% endfor %}
</div>
