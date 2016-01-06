/**
 * Aaa相关接口
 * @class AaaApi
 * @extends BaseApi
 * @constructor
 * @module modules
 * @example
 *     define('clientApi/AaaApi',',function(AaaApi){
 *          AaaApi.getTestInfo();
 *     });
 * @since 1.0.0
 * @public
 */

define(["clientApi/baseApi"], function (base) {

    var AaaApi = (function () {

        //构建一个AaaApi类,继承自baseApi基础类
        base.sub(AaaApi);

        //构造函数
        function AaaApi() {
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

            AaaApi.__super__.constructor.apply(this, arguments);
            this.constructorName = 'AaaApi';
        }

        AaaApi.include({
            

        });
        return AaaApi;
    })();

    return new AaaApi({
        name: "kerkee AaaApi",
        author: "gulp",
        version: "1.0",
        jsbc: jsBridgeClient,
        nativeCls: "aaaModules"
    });

});