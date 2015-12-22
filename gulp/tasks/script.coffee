gulp = require "gulp"
uglify = require "gulp-uglify"
concat = require "gulp-concat"
config   = require '../config'

browserSync = require 'browser-sync'
reload      = browserSync.reload

gulp.task 'js', ->
  gulp
    .src [
          "#{config.path.src.js}/lib/pace.min.js",
          "#{config.path.src.js}/lib/googlefeed.js",
          "#{config.path.src.js}/lib/jquery.backstretch.min.js"
        ]
    .pipe(uglify())
    .pipe(concat('before-load.js'))
    .pipe gulp.dest "#{config.path.dest.js}"
    .pipe reload(stream: true)
  gulp
    .src [
          "#{config.path.src.js}/modernizr.custom.js",
          "#{config.path.src.js}/html5shiv.js",
          "#{config.path.src.js}/respond.min.js",
          "#{config.path.src.js}/lib/pace.min.js"
        ]
    .pipe(uglify())
    .pipe(concat('before-load-ie.js'))
    .pipe gulp.dest "#{config.path.dest.js}"
    .pipe reload(stream: true)
  gulp
    .src [
          "#{config.path.src.js}/lib/news.js",
          "#{config.path.src.js}/lib/jquery.tabslet.min.js",
          "#{config.path.src.js}/lib/jquery.magnific-popup.min.js",
          "#{config.path.src.js}/lib/flipsnap.min.js",
          "#{config.path.src.js}/lib/overlay.js",
          "#{config.path.src.js}/lib/mobile_nav.js",
          "#{config.path.src.js}/scripts.js",
          "#{config.path.src.js}/main.js",
          "#{config.path.src.js}/tags/analytics.js",
          "#{config.path.src.js}/tags/all.js",
          "#{config.path.src.js}/lib/waypoints.min.js",
          "#{config.path.src.js}/lib/waypoints-sticky.min.js",
          "#{config.path.src.js}/top.js"        ]
    .pipe(uglify())
    .pipe(concat('after-load.js'))
    .pipe gulp.dest "#{config.path.dest.js}"
    .pipe reload(stream: true)
  gulp
    .src [
          "#{config.path.src.js}/lib/news.js",
          "#{config.path.src.js}/lib/jquery.tabslet.min.js",
          "#{config.path.src.js}/lib/jquery.magnific-popup.min.js",
          "#{config.path.src.js}/tags/analytics.js",
          "#{config.path.src.js}/tags/all.js"
        ]
    .pipe(uglify())
    .pipe(concat('after-load-ie.js'))
    .pipe gulp.dest "#{config.path.dest.js}"
    .pipe reload(stream: true)
  return