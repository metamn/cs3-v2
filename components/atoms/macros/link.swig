---
title: Link
description: Generate a link
params:
  - url: the href attribute
  - title: the title attribute
  - text: the link text
---

{% macro link(url, title, text) -%}
  <a href="{{ url }}" title="{{ title }}">{{ text }}</a>
{%- endmacro %}
