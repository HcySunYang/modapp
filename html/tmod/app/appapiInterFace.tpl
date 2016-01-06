define(['crossplatform/base/global'], function(global){
	var interFace = {
		
		/*
		 *  参数data的数据格式
		 *  
		 *	data = {
         *      nativeCls:this.attributes.nativeCls,	// 客户端对应实现的模块名称
         *      method:"",	// 客户端对应实现的方法名称
         *      param:{},	// 参数 
         *		callBack:callBack	// H5回调函数
         *  };
		 *
		 *
		 */
		test : function(data){

			// 如果有回调执行回调
			if(data.callBack){
                data.callBack();
            }
		}

	};
	
	// 模块路由
	return interFace;

});