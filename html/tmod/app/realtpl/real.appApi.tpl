/**
 * <%=@@mainApi%>相关接口
 * @class <%=@@mainApi%>Api
 * @extends BaseApi
 * @constructor
 * @module modules
 * @example
 *     define('clientApi/<%=@@mainApi%>Api',',function(<%=@@mainApi%>Api){
 *          <%=@@mainApi%>Api.getTestInfo();
 *     });
 * @since 1.0.0
 * @public
 */

define(["clientApi/baseApi"], function (base) {

    var <%=@@mainApi%>Api = (function () {

        //构建一个<%=@@mainApi%>Api类,继承自baseApi基础类
        base.sub(<%=@@mainApi%>Api);

        //构造函数
        function <%=@@mainApi%>Api() {
            /**
             * 映射客户端类的名称 <strong>(必选)</strong>
             * @property nativeCls
             * @type string
             * @since 1.0.0
             * @default "channelModule"
             * @public
             */

            /**
             * jsBridgeClient通信对象 <strong>(必选)</strong>
             * @property jsbc
             * @type string
             * @since 1.0.0
             * @default jsBridgeClient
             * @public
             */

            /**
             * 模块信息描述 <strong>(可选)</strong>
             * @property name
             * @type string
             * @since 1.0.0
             * @public
             */

            /**
             * 模块版本 <strong>(可选)</strong>
             * @property verison
             * @type int
             * @since 1.0.0
             * @public
             */

            /**
             * 模块作者 <strong>(可选)</strong>
             * @property author
             * @type string
             * @since 1.0.0
             * @public
             */

            <%=@@mainApi%>Api.__super__.constructor.apply(this, arguments);
            this.constructorName = '<%=@@mainApi%>Api';
        }

        <%=@@mainApi%>Api.include({
            

        });
        return <%=@@mainApi%>Api;
    })();

    return new <%=@@mainApi%>Api({
        name: "kerkee <%=@@mainApi%>Api",
        author: "gulp",
        version: "1.0",
        jsbc: jsBridgeClient,
        nativeCls: "<%=@@main%>Modules"
    });

});