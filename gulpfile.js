var gulp = require('gulp');
var gulpLoadPlugins = require("gulp-load-plugins");
var plugins = gulpLoadPlugins();
var util     = require("gulp-util");
var devPath = './html';
var appData = {};

/*
 * @desc 组装模板
 * @src  devPath 
 * @deps 
 * @dest devPath + '/tmod/app/dest'
 */
gulp.task('includeTpl',function () {
    // 获取 gulp 命令的 --name参数的值 （gulp createapp --name=aaa）
    var appName = util.env.name || 'special';
    
    // 首字母大写
    var appNameBig = appName.replace((/\w/), function(char){
        return char.toUpperCase();
    });

    appData={
        app: appName,
        appapi: appNameBig,
        appDo: appName + "Do",
        title: appName
    }
    return gulp.src([
            devPath + '/tmod/app/app.tpl',
            devPath + '/tmod/app/appDo.tpl',
            devPath + '/tmod/app/app.html',
            devPath + '/tmod/app/appApi.tpl',
            devPath + '/tmod/app/appapiInterFace.tpl'
        ])
        .pipe(plugins.fileInclude({
            prefix: '@@',
            basepath: '@file'
        }))
        .pipe(gulp.dest(devPath + '/tmod/app/dest'));
});

/*
 * @desc 解析模板
 * @src  devPath 
 * @deps includeTpl
 * @dest devPath + '/tmod/app/dest'
 */
gulp.task('resolveTpl',["includeTpl"],function () {
    return gulp.src([
            devPath + '/tmod/app/dest/app.tpl',
            devPath + '/tmod/app/dest/appDo.tpl',
            devPath + '/tmod/app/dest/app.html',
            devPath + '/tmod/app/dest/appApi.tpl',
            devPath + '/tmod/app/dest/appapiInterFace.tpl'
        ])
        .pipe(plugins.data(function () {
            return {app: appData.app, appDo:appData.appDo,title:appData.title, appapi : appData.appapi};
        }))
        .pipe(plugins.template())
        .pipe(gulp.dest(devPath + '/tmod/app/dest'));
});

/*
 * @desc 创建部署
 * @src  devPath + '/tmod/app/dest 
 * @deps resolveTpl
 * @dest devPath + '/modules/'
 */
gulp.task('createapp', ["resolveTpl"], function () {
    // 创建部署入口js文件，如 index.js
    gulp.src(devPath + '/tmod/app/dest/app.tpl')
        .pipe(plugins.rename({
            basename: appData.app,
            extname: ".js"
        }))
        .pipe(gulp.dest(devPath + '/target/'+appData.app));

    // 创建部署业务逻辑js文件，如 indexDo.js
    gulp.src(devPath + '/tmod/app/dest/appDo.tpl')
        .pipe(plugins.rename({
            basename: appData.appDo,
            extname: ".js"
        }))
        .pipe(gulp.dest(devPath + '/target/'+appData.app));

    // 创建部署html页面文件，如 index.html
    gulp.src([devPath + '/tmod/app/dest/*.html'])
        .pipe(plugins.rename({
            basename: appData.app,
            extname: ".html"
        }))
        .pipe(gulp.dest(devPath + '/target/'+appData.app));

    // 创建部署api接口js文件，如 indexApi.js
    gulp.src(devPath + '/tmod/app/dest/appApi.tpl')
        .pipe(plugins.rename({
            basename: appData.app + 'Api',
            extname: ".js"
        }))
        .pipe(gulp.dest(devPath + '/target/clientApi'));

    // 创建部署跨平台接口js文件，如 indexapiInterFace.js
    gulp.src(devPath + '/tmod/app/dest/appapiInterFace.tpl')
        .pipe(plugins.rename({
            basename: appData.app + 'apiInterFace',
            extname: ".js"
        }))
        .pipe(gulp.dest(devPath + '/target/clientApi'));
});
