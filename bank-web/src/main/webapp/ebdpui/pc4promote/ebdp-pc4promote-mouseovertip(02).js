var MouseOverTip = (function(){
	//����ģʽ,�˴�����ʵ������
	var _instance = null;
	
	var _mouseovertip = function(id){
		/**********����˽�б����ͷ���**********/
		//���ݿ�����
		var _$floatTip = null;
		//���ǲ�
		var _$wrapper = _$wrapper = jQuery("#"+id)[0] != undefined ? jQuery("#"+id) : jQuery(document.createElement("div")).attr("id",id);
		_$wrapper.hide();
		/**********����˽�б����ͷ��� 		End**********/
	
		
		/**********���幫�б����ͷ���**********/
		
		//������ʾ����ĸ߶�----����Ҫ��.
//		function _setMiddleHeight(){
//			var fontSize = Util.prototype.px2num(_$wrapper.css("font-size"));
//			var lineHeight = Util.prototype.px2num(_$wrapper.css("line-height"));
//			var fontNum = _$wrapper.html().length;
//			var middleWidth = _$wrapper.width();
//			//��ʾ������
//			var lineNum = Math.ceil(fontNum*fontSize/middleWidth);
//			//�߶�
//			var retHeight = lineNum * lineHeight;
//			_$wrapper.height(retHeight);
//		}
		
		
		//������ʾ
		this.show = function(baseElementID,floatWidth,content,position){
			//��׼Ԫ��
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
		//������ʾ
		this.hide=function(){
			_$wrapper.hide();
		};
		
		//������ʾ
		this.show1 = function(baseElementID,floatWidth,content){
			//��׼Ԫ��
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
		
		//���ÿ��
//		this.setWidth = function(){
//			if(floatWidth != null && floatWidth != "" && floatWidth != undefined){
//				_$wrapper.width(parseFloat(floatWidth));
//			}
//		}
		
		//����ʵ������
		this.getInstance = function(){
			if(_instance != null){
				return _instance;
			}else{
				return new _mouseovertip("_ebdp_pc4prod_mouseovertip");
			}
		};
		/**********���幫�б����ͷ���		End**********/
	};
	_instance = new _mouseovertip("_ebdp_pc4prod_mouseovertip");
	return _instance;
})();
