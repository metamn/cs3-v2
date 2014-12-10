<div class="graph">
  {% for item in graph %}
    <div class="item">
      <span class="title">{{ item.title }}</span>
      <span class="years">{{ item.years }} yrs</span>
    </div>
    <div class="bar size-{{ item.years }}"></div>
  {% endfor %}
</div>
