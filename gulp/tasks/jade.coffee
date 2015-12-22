gulp     = require 'gulp'
gulpJade = require 'gulp-jade'
plumber = require 'gulp-plumber'
notify  = require 'gulp-notify'
cache = require 'gulp-cached'
config   = require '../config'

browserSync = require 'browser-sync'
reload      = browserSync.reload

gulp.task 'jade', ->
  errorMessage = 'Error: <%= error.message %>'
  gulp.src ["#{config.path.src.jade}/**/!(_)*.jade"]
    .pipe cache('jade-cache')
    .pipe plumber(errorHandler: notify.onError(errorMessage))
    .pipe gulpJade
      pretty: true
    .pipe gulp.dest "#{config.path.dest.html}"
    .pipe reload({ stream: true })
  return

# layoutファイルなど(_*.jade)が変更された場合全て書き出す
gulp.task 'jade-all', ->
  errorMessage = 'Error: <%= error.message %>'
  gulp.src ["#{config.path.src.jade}/**/!(_)*.jade"]
    .pipe plumber(errorHandler: notify.onError(errorMessage))
    .pipe gulpJade
      pretty: true
    .pipe gulp.dest "#{config.path.dest.html}"
  return