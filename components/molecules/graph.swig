<div class="graph">
  {% for item in graph %}
    <div class="item" class="size-{{ item.years }}">
      <span class="title">{{ item.title }}</span>
      <span class="years">{{ item.years }} yrs</span>
    </div>
  {% endfor %}
</div>
