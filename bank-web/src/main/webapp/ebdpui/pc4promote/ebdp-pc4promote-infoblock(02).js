/**
 * 信息块构件对象
 */
var InfoBlock = (function(){
	
	function _infoblock(id) {
		
		/** 宽度 */
		var _width = null;
		
		/** 高度 */
		var _height = null;
		
		/** 类型 */
		var _type = null;
		
		/** 当类型为image和noborder时，flag分为两类 */
		var _flag = null;
		
		/** 右上角图片 */
		var _topRightImg = null;
		
		/** 左边框标题 */
		var _leftTitle = null;
		
		/** 左边框内容 */
		var _leftContent = null;
		
		/** 左边框内容类型 */
		var _leftContentType = null;
		
		/** 右边框标题 */
		var _rightTitle = null;
		
		/** 点击事件 */
		var _eventClick = null;
		
		/** 事件附加数据 */
		var _attachData = null;
		
		//end for parameter
		
		/** 信息框对象 */
		var _$infoblock = jQuery("#"+id);
		
		/** 左边标题对象 */
		var _$leftTitle = _$infoblock.find(".ebdp-pc4promote-infoblock-left-title p");
		
		/** 左边内容对象 */
		var _$leftContent = _$infoblock.find("dt b");
		
		/** 右边标题对象 */
		var _$rightTitle = _$infoblock.find("dd p:first"); 
		
		/** 信息框外面ul对象 */
		var _$ul = _$infoblock.parent("ul");
		
		/** 信息框外面wrapper对象 */
		var _$wrapper = _$ul.parent("div");
		
		/** type为image且flag为1时，图片对象 */
		var _$images = null;
		/** type为image且flag为2时，右上角图片对象 */
		var _$topRightImg = null;
		var increaseW = 10, $imgW, $imgH, increaseH;
		
	    var that = this;
	    
		/**
		 * 解除事件
		 */
		function _unbindEvent() {
			_$infoblock.unbind("click");
			
			if(_type=='noborder'&&_isAfterLoad()) {
				_$infoblock.unbind("mouseover").unbind("mouseout");
			}
			
			if(_type == 'image'&&_flag=='1') {
				_$images.unbind("mouseenter").unbind("mouseleave");
			}
		}
		
		/**
		 * 绑定事件
		 */
		function _bindEvent() {
			_unbindEvent();
			
			/** 点击事件绑定 */
			_$infoblock.bind("click", function(){
				if(_eventClick) {
					_eventClick(_attachData);
				}
			});
			
			/** 鼠标mouseover事件 */
			if(_type=='noborder'&&_isAfterLoad()) {
				
				_$infoblock.mouseover(function(){ 
					jQuery(this).css('background-color', '#fff9f2'); 
				}).mouseout(function(){
					jQuery(this).css('background-color','#fff'); 
				}); 
			}
			
			if(_type == 'image'&&(_flag=='1'||_flag=='2')) {
				_$images.mouseenter(function () {
					$imgW = jQuery(this).width(),
					$imgH = jQuery(this).height(),
					increaseH = increaseW * $imgH / $imgW;
					jQuery(this).stop(true).animate({
						'width' : $imgW + increaseW,
						'height' : $imgH + increaseH,
						'marginTop' : '-' + (increaseH / 2) + 'px',
						'marginLeft' : '-' + (increaseW / 2) + 'px'
					},300);

				}).mouseleave(function () {
					jQuery(this).stop(true).animate({
						'width' : $imgW,
						'height' : $imgH,
						'marginTop' : 0,
						'marginLeft' : 0
					},300);
				});
			}
		}
		
		/**
		 * 判断是否需要页面加载完之后再执行show
		 * @return boolean
		 */
		function _isAfterLoad() {
			return Util.prototype.isIE() && (parseInt(jQuery.browser.version,10)<8||Util.prototype.isQuirkMode());
		}
		
		/**
		 * 判断是否是ie的quirk模式
		 * @return boolean
		 */
		function _isQuirk() {
			return Util.prototype.isIE() && Util.prototype.isQuirkMode();
		}
		
		/**
		 * 判断IE6浏览器
		 */
		function _isIE6() {
			return Util.prototype.isIE() && (parseInt(jQuery.browser.version,10)==6);
		}
		
		/**
		 * 执行show函数体
		 */
		function _executeShowBody() {
			//if(_width)
				//_$infoblock.width(_width); 
			
			//if(_height)
				//_$infoblock.height(_height);
			
			if(_type == 'middle') {
				_$wrapper.addClass("ebdp-pc4promote-infoblock-wrap ebdp-pc4promote-infoblock-wrap-middle"); 
			}else if(_type == 'large') {
				_$ul.addClass("ebdp-pc4promote-infoblock-wrap-ul-large");
				_$wrapper.addClass("ebdp-pc4promote-infoblock-wrap ebdp-pc4promote-infoblock-wrap-large");
			}else if(_type == 'noborder') {
				_$wrapper.addClass("ebdp-pc4promote-infoblock-noborder-wrap"); 
				_$wrapper.find("ul").addClass("ebdp-pc4promote-infoblock-cf"); 
				if(_flag=='0') {  
					_$rightTitle = _$infoblock.find("dd b"); 
				}
			}else if(_type == 'image'&&(_flag=='1'||_flag=='2'||_flag=='3')) {
				_$wrapper.addClass("ebdp-pc4promote-infoblock-image-wrap"); 
				_$wrapper.find("ul").addClass("ebdp-pc4promote-infoblock-cf"); 
				_$images = _$infoblock.find('img:first');
				_$images.css({'width':'217px','height':'153px'}); 
				_$topRightImg = _$infoblock.find('.ebdp-pc4promote-infoblock-image-topRight');
				if(_isAfterLoad()) { 
					_$images.width("210");
					_$infoblock.width("210");
				}
				if(_flag=='2'||_flag=='3') {
					_$images.css({'position':'absolute','z-index':'-1'});
					var left = 172+_$images.offset().left; 
					if(_isAfterLoad()) { 
						 left = 164+_$images.offset().left;     
					} 
					_$topRightImg.css({'position':'absolute','z-index':'99','left':left});        
				}    
			}
			
			if(_topRightImg) {
				if(_type=='noborder') { 
					_$infoblock.find("u").addClass("ebdp-pc4promote-infoblock-"+_topRightImg); 
					_$wrapper.find("dd").width("215");   
 				}else { 
					_$infoblock.addClass("ebdp-pc4promote-infoblock-"+_topRightImg);  
				}
			}
			
			if(_leftTitle)
				_$leftTitle.text(_leftTitle);
			
			if(_leftContentType == '1') {
				_$leftContent = _$infoblock.find("i");
			}
			
			if(_leftContent) 
			   _$leftContent.text(_leftContent);   
			
			
			if(_rightTitle)
				_$rightTitle.text(_rightTitle);   
			
			
			
			  
			_bindEvent();
			
			
		}
		
		/**
		 * 当前组件展现进行外观处理
		 */
		this.show = function(){
			if(_isAfterLoad()) {
				jQuery(function(){
					_executeShowBody();
					if(_type=='noborder') {
						if(_isQuirk()) {
							_$infoblock.css({'width':'472px','height':'148px'}); 
						}
					}
				});
			}else {
				_executeShowBody();
			}
			
			if(_type=='middle') {
				_$wrapper.find("dd").width("155");  
				_$rightTitle.width("142");         
				if(_isIE6()) {
					_$wrapper.find("dd").width("130");  
				}
			}else if(_type=='large') {
				_$wrapper.find("dd").width("230");          
			}else if(_type=='small') {
				_$wrapper.find("dd").width("125");   
			}else if(_type=='noborder') {
				//_$wrapper.find("dd").width("249");   
			}  
		};
		  
		/**
		 * 设置宽度
		 * @param width
		 */
		this.setWidth = function(width) {
			_width = width;
		};
		
		/**
		 * 设置高度
		 * @param height
		 */
		this.setHeight = function(height) {
			_height = height;
		};
		
		/**
		 * 设置类型
		 * @param type
		 */
		this.setType = function(type) {
			_type = type; 
		};
		
		/**
		 * 设置类型image和noborder下的类型
		 * @param flag
		 */
		this.setFlag = function(flag) {
			_flag = flag;  
		};
		
		/**
		 * 设置右上角图片
		 * @param topRightImg
		 */
		this.setTopRightImg = function(topRightImg) {
			_topRightImg = topRightImg;
		};
		
		/**
		 * 设置左边框标题
		 * @param leftTitle
		 */
		this.setLeftTitle = function(leftTitle) {
			_leftTitle = leftTitle;
		};
		
		/**
		 * 设置左边框内容
		 * @param leftContent
		 */
		this.setLeftContent = function(leftContent) {
			_leftContent = leftContent;
		};
		
		/**
		 * 设置左边框内容类型
		 * @param leftContentType
		 */
		this.setLeftContentType = function(leftContentType) {
			_leftContentType = leftContentType; 
		};
		
		/**
		 * 设置右边框标题
		 * @param rightTitle
		 */
		this.setRightTitle = function(rightTitle) {
			_rightTitle = rightTitle;
		};
		
		/**
		 * 设置click时触发的回调函数
		 * @param eventClick
		 */
		this.setEventClickHandler = function(eventClick) {
			_eventClick = eventClick;
		};
		
		/**
		 * 设置事件附加数据
		 * @param attachData
		 */
		this.setAttachData = function(attachData) {
			_attachData = attachData;
		};
		
		/**
		 * 设置是否可见
		 * @param visible
		 */
		this.setVisible = function(visible) {
			if(this.visible != visible){
				this.visible = visible;
				if(visible){
					_$infoblock.show();
				}else{
					_$infoblock.hide();
				}
			}
		};
			
		/**
		 * 设置是否可用
		 * @param enable
		 */
		this.setEnable = function(enable) {
			if(this.enable != enable){
				this.enable = enable;
				if(enable){
					_bindEvent();
				}else{
					_unbindEvent();
				}
			}
		};
		
		
		/**
		 * 当leftContentType为1时，可以动态改变图片显示类型
		 */
		this.changImgStyle = function(cssName, cssValue) {
			if(_leftContentType == '1') {
				if(arguments.length == 1) {
					_$leftContent.css(cssName);
				}else if(arguments.length == 2) {
					_$leftContent.css(cssName, cssValue);
				}
			}
		};
		
	};
	
	return _infoblock;
})();