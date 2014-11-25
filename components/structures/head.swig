{% import "../atoms/macros/classname.swig" as m  %}
{% set classname = m.classname(title) %}

<html lang="en" class="{{ classname }}">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <title>{{ title }}</title>

    <link href="/assets/styles/{{ classname }}.min.css" media="screen, projection" rel="stylesheet" type="text/css" />
  </head>

  <body>
