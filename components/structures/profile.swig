{% set skills = [
  {
    title: "UI",
  },
  {
    title: "UX"
  },
  {
    title: "RWD"
  },
  {
    title: "CMS"
  }
  ]
%}

<section id="profile">
  <h3>Profile</h3>

  {% include "../organisms/card.swig" %}
  {% include "../molecules/circles.swig" with { title: "Skillset", circles: skills } %}
  {% include "../atoms/decorations/sine-wave/sine-wave.swig" %}

</section>
