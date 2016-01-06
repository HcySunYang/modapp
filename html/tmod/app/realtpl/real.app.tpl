'use strict';

//requirejs通用模块设置
requirejs.config({

    baseUrl:"../../modules",

    paths: {
        api:"../vendor/api",
        when:"../vendor/lib/when",
        bridgeLib: "../bridgeLib",
        crossplatform: "../crossplatform",
        interFace: "../crossplatform/interface",
        injectionPage: "../crossplatform/injectionPage",
        swiper: "../vendor/lib/swiper.min",
        zepto:"../vendor/lib/zepto.min",
        lazyload:"../vendor/lib/jquery.lazyload",
        underscore: '../vendor/lib/underscore',
        fastclick: "../vendor/lib/fastclick",
        template: '../vendor/lib/template',
        domReady: '../vendor/plugin/domReady',
        text: '../vendor/plugin/require.text',
        css: '../vendor/plugin/require.css',
        text_path:"../modules",     // eg:"text!text_path/channel.tpl.html"
        css_path:"../css",           // eg:"css!css_path/new.css"
        crossplatform_css_path:"../crossplatform/static/css"           // eg:"css!crossplatform_css_path/new.css"
    },

    waitSeconds: 10,

    '*':{
        'text':'../vendor/plugin/require.text',
        'css':'../vendor/plugin/require.css'
    },

    shim: {
        "bridgeLib": {
            exports: "bridgeLib"
        },

        'zepto':{
            exports:'$'
        },

        'template': {
            exports: "template"
        },

        lazyload:{
            deps:['zepto'],
            exports:"lazyload"
        },

        when:{
            deps:['zepto']
        }
    }
});

require(["<%=@@main%>/<%=@@body%>"],function(<%=@@body%>){
    <%=@@body%>.init();
});