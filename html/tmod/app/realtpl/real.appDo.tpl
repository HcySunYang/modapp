define([
        'zepto',
        'clientApi/clientInfo',
        'api/nativeUI/widget',
        'when',
        'fastclick',
        'clientApi/util',
        'clientApi/<%=@@main%>Api',
        'domReady!'
    ],

    function($,clientInfo,widget,when,fastclick,util,<%=@@main%>Api){

        function <%=@@body%>(){
            fastclick.attach(document.body);

        };

        <%=@@body%>.prototype.render=function(){
            var t=this;
        }

        <%=@@body%>.prototype.init=function(){
            var t = this;
            interface.start(function () {
                t.render();
            });
        }

        return new <%=@@body%>();
    });