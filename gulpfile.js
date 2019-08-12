// Gulp.js configuration
'use strict';

const

  // source and build folders
  dir = {
    base        : __dirname,
    src         : 'src/',
    build       : 'dist/'
  },

  // Gulp and plugins
  gulp          = require('gulp'),
  gutil         = require('gulp-util'),
  newer         = require('gulp-newer'),
  imagemin      = require('gulp-imagemin'),
  sass          = require('gulp-sass'),
  postcss       = require('gulp-postcss'),
  deporder      = require('gulp-deporder'),
  concat        = require('gulp-concat'),
  stripdebug    = require('gulp-strip-debug'),
  uglify        = require('gulp-uglify')
;

// Browser-sync
var browsersync = false;


// PHP Tasks
const php = {
  src           : dir.src + 'template/**/*.php',
  build         : dir.build
};

gulp.task('php', () => {
  return gulp.src(php.src)
    .pipe(newer(php.build))
    .pipe(gulp.dest(php.build));
});

// Image Tasks
const images = {
    src         : dir.src + 'images/**/*',
    build       : dir.build + 'images/'
  };
  
gulp.task('images', () => {
return gulp.src(images.src)
    .pipe(newer(images.build))
    .pipe(imagemin())
    .pipe(gulp.dest(images.build));
});

// SCSS Tasks
var css = {
    src         : dir.src + 'scss/style.scss',
    watch       : dir.src + 'scss/**/*',
    build       : dir.build,
    sassOpts: {
        outputStyle     : 'nested',
        imagePath       : images.build,
        precision       : 3,
        errLogToConsole : true
    },
    processors: [
        require('postcss-assets')({
        loadPaths: ['images/'],
        basePath: dir.base,
        baseUrl: '/wp-content/themes/wptheme/'
        }),
        require('autoprefixer'),
        require('css-mqpacker'),
        require('cssnano')
    ]
};

gulp.task('css', ['images'], () => {
return gulp.src(css.src)
    .pipe(sass(css.sassOpts))
    .pipe(postcss(css.processors))
    .pipe(gulp.dest(css.build));
    // .pipe(browsersync ? browsersync.reload({ stream: true }) : gutil.noop());
});