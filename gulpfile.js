

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
  assets_src: 'assets/**/*',
  assets_dest: 'site/assets',
  pages: 'components/pages/*.html',
  site: 'site',
  home: 'site/home',
  watch: ['components/**/*.swig', 'components/pages/*.{js,css}']
};




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
// - collects all .js files into all.js, then minify into all.min.js, then move to site/assets/scripts
gulp.task('scripts', function() {
  return gulp.src(paths.js)
    .pipe(concat('all.js'))
    .pipe(rename({ suffix: '.min' }))
    .pipe(uglify())
    .pipe(gulp.dest(paths.scripts));
});


// Assets
// - moves all assets from assets/ to site/assets/
gulp.task('assets', function() {
  return gulp.src(paths.assets_src)
    .pipe(gulp.dest(paths.assets_dest));
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
    'styles',
    'scripts',
    'assets',
    'pages',
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
