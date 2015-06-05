gulp        = require 'gulp'
browserSync = require 'browser-sync'

gulp.task 'browserSync', ->
  browserSync
    port: 9000
    open: true
    notify: false
    server:
      baseDir: ['./dist', './app']
    files: ['./dist/**']