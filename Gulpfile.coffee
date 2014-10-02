gulp   = require "gulp"
jade   = require "gulp-jade"
sass   = require "gulp-sass"

gulp.task "sass", ->
  gulp
  .src "vendor/assets/bigticket/*"
  .pipe sass sourceComments: 'normal'
  .pipe gulp.dest "bin"

gulp.task "jade", ->
  gulp
  .src "jade_templates/**/*.jade"
  .pipe jade()
  .pipe gulp.dest "bin"

gulp.task "watch", ->
  gulp.watch "sass/**", ["sass"]
  gulp.watch "jade/**", ["jade"]
