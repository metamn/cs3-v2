{% import "../atoms/macros/figure.swig" as f  %}

{% set images = [
    {
      name: "Csongor Bartus",
      description: "User interface and experience designer",
      mobile: "avatar-3x.png",
      tablet: "avatar-3x.png",
      laptop: "avatar-4x.png",
      desktop: "avatar-4x.png"
    }
  ]
%}


{% set info = {
  name: "Csongor Bartus",
  location: "Budapest, Hungary, Europe"
} %}



<article id="card">
  <h3>Card</h3>

  {{ f.figure(0, images[0].name) }}

  <aside>
    <h3>Personal info</h3>

    <div class="name">
      {{ info.name }}
    </div>

    <div class="location">
      {{ info.location }}
    </div>
  </aside>
</article>
