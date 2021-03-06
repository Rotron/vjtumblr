gulp            = require 'gulp'
plumber         = require 'gulp-plumber'
replace         = require 'gulp-replace'
uglify          = require 'gulp-uglify'
config          = require '../config'
app_config      = require '../app_config'

gulp.task 'js-minify', ->
  gulp.src ["#{config.path.src.js}/**/*.js"]
    .pipe plumber()
    .pipe replace('data_api_key', "#{app_config.data.api_key}")
    .pipe uglify()
    .pipe gulp.dest "#{config.path.dest.js}"
