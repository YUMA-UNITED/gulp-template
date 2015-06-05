gulp = require "gulp"
uglify = require "gulp-uglify"
concat = require "gulp-concat"
config   = require '../config'

browserSync = require 'browser-sync'
reload      = browserSync.reload

gulp.task 'js', ->
  gulp
    .src ["#{config.path.src.js}/**/*.js"]
    .pipe(uglify())
    .pipe(concat('all.js'))
    .pipe gulp.dest "#{config.path.dest.js}"
    .pipe reload(stream: true)
  return