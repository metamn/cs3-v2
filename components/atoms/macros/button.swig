---
title: Button
description: Generate a button
params:
  - id: the HTML id of the button
  - text: the button text
---

{% macro button(id, text) -%}
  <div id="{{ id }}">{{ text }}</div>
{%- endmacro %}
