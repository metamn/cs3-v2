{% set skills = [
    {
      title: "UI",
      description: "I like to design simple / powerful user interfaces <span>and</span> write clean, well documented, reusable front-end code.",
      graph: [
        {
          title: "HTML5, CSS3, jQuery",
          years: 7,
        },
        {
          title: "SASS / SCSS",
          years: 6,
        },
        {
          title: "Responsive Web Design",
          years: 4,
        },
        {
          title: "Atomic Web Components",
          years: 2,
        },
        {
          title: "Styleguide",
          years: 1,
        }
      ],
      link: {
        title: "View code sample",
        url: "http://github.com/metamn",
        text: "View code sample"
      }
    },
    {
      title: "UX",
      description: "All my works are seeking the wholeness, that moment when the viewer becomes one with the message and feels the immediate urge to express satisfaction.",
      link: {
        title: "View case study",
        url: "message",
        text: "View case study"
      }
    },
    {
      title: "RWD",
      description: "All devices are equal. Since 2010."
    },
    {
      title: "CMS",
      description: "Better the content better the experience.",
      graph: [
        {
          title: "Wordpress",
          years: 7,
        },
        {
          title: "Jekyll",
          years: 7,
        },
        {
          title: "MVC (Rails, Yii)",
          years: 3,
        },
        {
          title: "Gulp / Node.js",
          years: 1
        }
      ]
    }
  ]
%}

<section id="skills">
  <h3>Skills</h3>

  {% for skill in skills %}
    {% include "../organisms/skill.swig" %}
  {% endfor %}
</section>
