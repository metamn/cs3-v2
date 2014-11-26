{% import "../atoms/macros/figure.swig" as f  %}

<article>
  <h3>{{ image.name }}</h3>

  {{ f.figure(loop.index0, image.name) }}
</article>
