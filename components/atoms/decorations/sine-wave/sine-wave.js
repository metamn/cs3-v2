var svg = document.getElementById('sine-wave').children[0];
var origin = { //origin of axes
  x: 100,
  y: 100
};

var amplitude = 20; // wave amplitude
var rarity = 1; // point spacing
var freq = 0.1; // angular frequency
var phase = 20; // phase angle

//var colors = ['#60be85', '#82f6f8', '#E2D3CE', '#f1d1bc', '#a9a9a9', '#f9cdec'];
//for (var i = 1; i < colors.size; i++ ) {
  //drawLine("black");
//}

for (var i = -100; i < 2000; i++) {
  var line = document.createElementNS("http://www.w3.org/2000/svg", "line");

  line.setAttribute('x1', (i - 1) * rarity + origin.x);
  line.setAttribute('y1', Math.sin(freq * (i - 1 + phase)) * amplitude + origin.y);

  line.setAttribute('x2', i * rarity + origin.x);
  line.setAttribute('y2', Math.sin(freq * (i + phase)) * amplitude + origin.y);

  line.setAttribute('style', "stroke:black;stroke-width:1");

  svg.appendChild(line);
}
