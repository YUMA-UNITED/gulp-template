gulp    = require 'gulp'
sass    = require 'gulp-ruby-sass'
please  = require 'gulp-pleeease'
plumber = require 'gulp-plumber'
notify  = require 'gulp-notify'
config  = require '../config'

browserSync = require 'browser-sync'
reload      = browserSync.reload

gulp.task 'sass', ->
  return sass('./app/assets/stylesheets/application.sass')
    .on('error', sass.logError)
    .pipe please(
      rem: false
      minifier: false
      fallbacks: autoprefixer: 'last 2 versions'
    )
    .pipe gulp.dest "#{config.path.dest.css}"
    .pipe reload(stream: true)