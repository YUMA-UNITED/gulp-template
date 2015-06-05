gulp     = require 'gulp'
imagemin = require 'gulp-imagemin'
changed  = require 'gulp-changed'
config   = require '../config'

gulp.task 'imagemin', ->
  gulp
    .src ["#{config.path.src.image}/**/*"]
    .pipe changed("#{config.path.dest.image}")
    .pipe imagemin()
    .pipe gulp.dest "#{config.path.dest.image}"
  return