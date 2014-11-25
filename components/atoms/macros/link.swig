---
title: Link
description: Generate a link
---

{% macro link(url, title, text) -%}
  <a href="{{ url }}" title="{{ title }}">{{ text }}</a>
{%- endmacro %}
