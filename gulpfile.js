

// Plugins
var gulp = require('gulp'),
    del = require('del'),
    rename = require('gulp-rename'),
    concat = require('gulp-concat'),
    browserSync = require('browser-sync'),
    runSequence = require('run-sequence'),

    swig = require('gulp-swig'),
    data = require('gulp-data'),
    fm = require('front-matter'),

    minifycss = require('gulp-minify-css'),
    uglify = require('gulp-uglify');


// Folder structure
var paths = {
  components: 'components',
  swig: 'components/**/*.swig',
  css: 'components/pages/*.css',
  js: 'components/**/*.js',
  yaml: 'components/**/*.yml',
  styles: 'site/assets/styles',
  scripts: 'site/assets/scripts',
  pages: 'components/pages/*.html',
  styleguide: 'components/pages/styleguide/**/*.html',
  site: 'site',
  home: 'site/home',
  watch: ['components/**/*.{yml,swig}', 'components/pages/*.{js,css}']
};



// YAML
// - compile an .yml file to .scss
// - YAML files are definitions of basic Styleguide elements like colors, breakpoints, fonts etc.
gulp.task('yaml', function() {
  return gulp.src(paths.yaml)
    .pipe(data(function(file) {
      var content = fm(String(file.contents));
      file.contents = new Buffer(content.body);
      return content.attributes;
    }))
    .pipe(swig({
      defaults: {
        cache: false
      }
    }))
    .pipe(rename(function(path) {
      path.dirname = path.dirname.replace('pages/styleguide', '');
      path.basename = '_' + path.basename;
      path.extname = '.scss';
    }))
    .pipe(gulp.dest(paths.components));
});


// Swig
// - compiles a .swig file with YAML front matter into HTML
gulp.task('swig', function() {
  return gulp.src(paths.swig)
    .pipe(data(function(file) {
      var content = fm(String(file.contents));
      file.contents = new Buffer(content.body);
      return content.attributes;
    }))
    .pipe(swig({
      defaults: {
        cache: false
      }
    }))
    .pipe(rename({ extname: '.html' }))
    .pipe(gulp.dest(paths.components));
});


// Styles
// - moves all .css files from components/ to site/assets/styles
// - .css is created from .scss by Compass not Gulp
gulp.task('styles', function() {
  return gulp.src(paths.css)
    .pipe(rename({ suffix: '.min' }))
    .pipe(minifycss())
    .pipe(gulp.dest(paths.styles));
});


// Scripts
// - collects all .js files into main.js, then minify into main.min.js, then move to site/assets/scripts
gulp.task('scripts', function() {
  return gulp.src(paths.js)
    .pipe(concat('main.js'))
    .pipe(rename({ suffix: '.min' }))
    .pipe(uglify())
    .pipe(gulp.dest(paths.scripts));
});


// Pages
// - compacting pages
// - ex: pages/home.html => home/index.html
gulp.task('pages', function() {
  return gulp.src(paths.pages)
    .pipe(rename(function(path) {
      path.dirname = path.basename;
      path.basename = 'index';
    }))
    .pipe(gulp.dest(paths.site))
  ;
});


// Styleguide
// - compacting styleguide
// - ex: styleguide/pages/home.html => styleguide/pages/home/index.html
gulp.task('styleguide', function() {
  return gulp.src(paths.styleguide)
    .pipe(rename(function(path) {
      path.dirname = '/styleguide/' + path.dirname + '/' + path.basename + '/';
      path.basename = 'index';
    }))
    .pipe(gulp.dest(paths.site))
  ;
});


// Home
// - making a homepage from an existing page
// ex: home/index.html => index.html
gulp.task('home', function(cb) {
  gulp.src(paths.home + '/index.html')
    .pipe(rename('index.html'))
    .pipe(gulp.dest(paths.site))
  del([paths.home]);
  cb();
});



// Clean site/
gulp.task('clean', function(cb) {
  del([paths.site + '/**/*']);
  cb();
});




// The default task
// - runSequence makes sure all tasks are running one after another
// - otherwise Gulp is messing up everything with it's async task runner
gulp.task('default', function(cb) {
  runSequence(
    'clean',
    'swig',
    'yaml',
    'styles',
    'scripts',
    'pages',
    'styleguide',
    'home',
    cb
  );
});


// Start server
gulp.task('server', function(cb) {
  browserSync({
    server: {
      baseDir: paths.site
    }
  });

  cb();
});


// Watch
gulp.task('watch', ['server'], function(cb) {
  gulp.watch(paths.watch, ['default']);

  cb();
});
