{% import "../../atoms/macros/figure.swig" as f  %}

{% set images = [
    {
      name: "Csongor Bartus",
      description: "User interface and experience designer",
      mobile: "avatar-2x.png",
      tablet: "avatar-3x.png",
      laptop: "avatar-3x.png",
      desktop: "avatar-4x.png"
    }
  ]
%}

<article id="card">
  <h3>Card</h3>

  {{ f.figure(0, images[0].description) }}

</section>
