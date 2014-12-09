{% set contact = [
    {
      title: "Send me an email",
      glyph: "mail",
      type: "email",
      email: "bartus.csongor@gmail.com",
      text: "bartus.csongor@gmail.com"
    },
    {
      title: "Contact via Twitter",
      glyph: "twitter",
      url: "http://twitter.com/metamn",
      text: "News on Twitter"
    },
    {
      title: "Code samples on Github",
      glyph: "mark-github",
      url: "http://github.com/metamn/its-csongor",
      text: "Code samples on Github"
    },
    {
      title: "Inspiration on Tumblr",
      glyph: "tumblr",
      url: "http://metamn.tumblr.com",
      text: "Inspiration on Tumblr"
    }
  ]
%}

{% set icons = { title: "Contact", icons: contact } %}
{% include "../molecules/icons.swig" %}
