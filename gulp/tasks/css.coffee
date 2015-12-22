gulp    = require 'gulp'
sass    = require 'gulp-ruby-sass'
please  = require 'gulp-pleeease'
plumber = require 'gulp-plumber'
notify  = require 'gulp-notify'
config  = require '../config'

browserSync = require 'browser-sync'
reload      = browserSync.reload

gulp.task 'css', ->
  errorMessage = 'Error: <%= error.message %>'
  gulp
    .src ["#{config.path.src.sass}/**/!(_)*.sass"]
    .pipe plumber(errorHandler: notify.onError(errorMessage))
    .pipe sass('sourcemap=none': true)
    .pipe please(
      fallbacks: autoprefixer: 'last 2 versions'
    )
    .pipe gulp.dest "#{config.path.dest.css}"
    .pipe reload(stream: true)
  return