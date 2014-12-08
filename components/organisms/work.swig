{% import "../atoms/macros/figure.swig" as f  %}
{% import "../atoms/macros/classname.swig" as c  %}
{% set classname = c.classname(image.name) %}

<article id="{{ classname }}" class="work">
  {% set link = {
    title: image.name,
    url: image.url,
    text: image.name
  } %}
  <h3>
    {% include "../atoms/link.swig" %}
  </h3>

  {{ f.figure(loop.index0, image.name) }}

  {% set link = {
    title: image.description,
    url: image.url,
    text: image.description
  } %}
  <p>
    {% include "../atoms/link.swig" %}
  </p>
</article>
