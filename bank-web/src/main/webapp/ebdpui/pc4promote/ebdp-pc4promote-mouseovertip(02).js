var MouseOverTip = (function(){
	//单例模式,此处声明实例对象
	var _instance = null;
	
	var _mouseovertip = function(id){
		/**********定义私有变量和方法**********/
		//气泡框整体
		var _$floatTip = null;
		//覆盖层
		var _$wrapper = _$wrapper = jQuery("#"+id)[0] != undefined ? jQuery("#"+id) : jQuery(document.createElement("div")).attr("id",id);
		_$wrapper.hide();
		/**********定义私有变量和方法 		End**********/
	
		
		/**********定义公有变量和方法**********/
		
		//计算显示区域的高度----不需要了.
//		function _setMiddleHeight(){
//			var fontSize = Util.prototype.px2num(_$wrapper.css("font-size"));
//			var lineHeight = Util.prototype.px2num(_$wrapper.css("line-height"));
//			var fontNum = _$wrapper.html().length;
//			var middleWidth = _$wrapper.width();
//			//显示的行数
//			var lineNum = Math.ceil(fontNum*fontSize/middleWidth);
//			//高度
//			var retHeight = lineNum * lineHeight;
//			_$wrapper.height(retHeight);
//		}
		
		
		//整合显示
		this.show = function(baseElementID,floatWidth,content,position){
			//基准元素
			var _$baseElement = baseElementID.jquery ? baseElementID: jQuery("#"+baseElementID);
			if(floatWidth != null && floatWidth != "" && floatWidth != undefined){
				_$wrapper.width(parseFloat(floatWidth));
			}
			_$wrapper.addClass("ebdp-pc-mouseovertip-wrapper");
			_$wrapper.html(content);
			if(position&&position=='left') {
				_$wrapper.css("top",_$baseElement.offset().top + "px");
				_$wrapper.css("left",_$baseElement.offset().left-_$wrapper.outerWidth() + "px");
			}else {
				_$wrapper.css("top",_$baseElement.offset().top + _$baseElement.height() + "px");
				_$wrapper.css("left",_$baseElement.offset().left + "px");
			}
			_$wrapper.show();
			jQuery(function(){
				_$wrapper.appendTo("body");
			});
			
		};
		//隐藏显示
		this.hide=function(){
			_$wrapper.hide();
		};
		
		//整合显示
		this.show1 = function(baseElementID,floatWidth,content){
			//基准元素
			var _$baseElement = baseElementID.jquery ? baseElementID: jQuery("#"+baseElementID);
			if(floatWidth != null && floatWidth != "" && floatWidth != undefined){
				_$wrapper.width(parseFloat(floatWidth));
			}
			_$baseElement.unbind("mouseover");
			_$baseElement.bind("mouseover",function(){
				_$wrapper.addClass("ebdp-pc-mouseovertip-wrapper");
				_$wrapper.html(content);
				_$wrapper.css("top",_$baseElement.offset().top + _$baseElement.height() + "px");
				_$wrapper.css("left",_$baseElement.offset().left + "px");
				_$wrapper.show();
			});
			_$baseElement.unbind("mouseout");
			_$baseElement.bind("mouseout",function(){
				_$wrapper.hide();
			});
			jQuery(function(){
				_$wrapper.appendTo("body");
			});
			
					
			//_$wrapper.show();
			//_setMiddleHeight();
		};
		
		//设置宽度
//		this.setWidth = function(){
//			if(floatWidth != null && floatWidth != "" && floatWidth != undefined){
//				_$wrapper.width(parseFloat(floatWidth));
//			}
//		}
		
		//返回实例对象
		this.getInstance = function(){
			if(_instance != null){
				return _instance;
			}else{
				return new _mouseovertip("_ebdp_pc4prod_mouseovertip");
			}
		};
		/**********定义公有变量和方法		End**********/
	};
	_instance = new _mouseovertip("_ebdp_pc4prod_mouseovertip");
	return _instance;
})();
