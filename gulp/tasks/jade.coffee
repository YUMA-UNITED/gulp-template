gulp     = require 'gulp'
gulpJade = require 'gulp-jade'
plumber = require 'gulp-plumber'
notify  = require 'gulp-notify'
config   = require '../config'

browserSync = require 'browser-sync'
reload      = browserSync.reload

gulp.task 'jade', ->
  errorMessage = 'Error: <%= error.message %>'
  gulp.src ["#{config.path.src.jade}/**/!(_)*.jade"]
    .pipe plumber(errorHandler: notify.onError(errorMessage))
    .pipe gulpJade
      pretty: true
    .pipe gulp.dest "#{config.path.dest.html}"
    .pipe reload({ stream: true })
  return