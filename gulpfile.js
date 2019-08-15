// Sass configuration
var gulp = require('gulp');
var sass = require('gulp-sass');

gulp.task('sass', function(cb) {
    gulp.src('blog/resources/sass/*.scss')
        .pipe(sass())
        .pipe(gulp.dest(function(f) {
            return f.base;
        }));
    cb();
});

gulp.task('default', gulp.series('sass', function(cb) {
    gulp.watch('blog/resources/sass/*.scss', gulp.series('sass'));
    cb();
}));