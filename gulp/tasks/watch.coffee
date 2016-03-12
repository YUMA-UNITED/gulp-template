gulp   = require 'gulp'
config = require '../config'

gulp.task 'watch', ['browserSync'], ->
  gulp.watch ["#{config.path.src.jade}/**/*.jade"], ['jade']
  gulp.watch ["#{config.path.src.sass}/**/*.sass"], ['sass']
  gulp.watch ["#{config.path.src.js}/**/*.js"], ['js']
  gulp.watch ["#{config.path.src.image}/**/*"], ['imagemin']

gulp.task 'setWatch', ->
  global.isWatching = true