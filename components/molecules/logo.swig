{% import "../atoms/macros/link.swig" as l  %}

<div id="logo">
  {% include "../atoms/square.swig" %}
  <h1>
      {{ l.link("/", "It's Csongor", "It's Csongor") }}
  </h1>
</div>
