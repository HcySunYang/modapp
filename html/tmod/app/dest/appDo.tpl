define([
        'zepto',
        'clientApi/clientInfo',
        'api/nativeUI/widget',
        'when',
        'fastclick',
        'clientApi/util',
        'clientApi/aaaApi',
        'domReady!'
    ],

    function($,clientInfo,widget,when,fastclick,util,aaaApi){

        function aaaDo(){
            fastclick.attach(document.body);

        };

        aaaDo.prototype.render=function(){
            var t=this;
        }

        aaaDo.prototype.init=function(){
            var t = this;
            interface.start(function () {
                t.render();
            });
        }

        return new aaaDo();
    });