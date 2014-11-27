{% import "../atoms/macros/figure.swig" as f  %}
{% import "../atoms/macros/classname.swig" as c  %}
{% set classname = c.classname(image.name) %}

<article id="{{ classname }}">
  <h3>{{ image.name }}</h3>

  {{ f.figure(loop.index0, image.name) }}

  <p>
    {{ image.description }}
  </p>
</article>
