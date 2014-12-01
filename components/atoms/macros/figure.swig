---
title: Figure
description: Returns a responsive image
params:
  - id: the index of the image from a Front Matter array
  - figcaption: the caption
---

{% macro figure(id, figcaption) -%}
  {% set image = images[id] %}

  <figure>
    {% if image.url %}<a href="{{ site.url + '/' + image.url }}" title="{{ figcaption }}">{% endif %}
      <picture>
        <!--[if IE 9]><video style="display: none;"><![endif]-->
        <source media="(min-width: 90em)" srcset="/assets/images/{{ image.desktop }}">
        <source media="(min-width: 64em)" srcset="/assets/images/{{ image.laptop }}">
        <source media="(min-width: 37.5em)" srcset="/assets/images/{{ image.tablet }}">
        <source srcset="/assets/images/{{ image.mobile }}">
        <!--[if IE 9]></video><![endif]-->

        <img src="/assets/images/{{ image.mobile }}" alt="{{ figcaption }}">
      </picture>
      <figcaption>{{ figcaption }}</figcaption>
    {% if image.url %}</a>{% endif %}
  </figure>
{%- endmacro %}
