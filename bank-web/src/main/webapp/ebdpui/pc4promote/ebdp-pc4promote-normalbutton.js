/**
 * 普通按钮构件对象
 */
var NormalButton = ( function() {

	function _normalButton(id) {

		/** 宽度 */
		var _width = null;

		/** 高度 */
		var _height = null;

		/** 水平文本对象 */
		var _$wrapper = jQuery("#" + id);

		/**
		 * 按钮风格 orange:橙色 pink:粉色 red:红色 gray:灰色 
		 */
		var _style = 'orange';//#ff7878,修改默认的orange的颜色，避免开发的修改
		
		var _styleArray=['orange','pink','red','gray','yellow','lightpink'];

		/** 背景图片 */
		var _backImage = '';
		
		var _size='normal';

		/** 内容描述数组 */
		var _eventClick = null;
		/** 内容颜色类型数组 */
		var _attachData = {};

		var imgBlock = null;
		
		/**
		 * 当前组件展现进行外观处理
		 */
		this.show = function() {
			var _that = this;
			var minWidth=80;

			if (window._perbank_version_utb
					&& parseInt(window._perbank_version_utb, 10) == 3) {
				//先加上公共的css的wrapper
				_$wrapper.addClass("ebdp-pc4promote-normalbutton-wrapper");
				if(_size=='big'){
					_$wrapper.addClass("ebdp-pc4promote-normalbutton-big");
					minWidth=110;
				}else if(_size=='normal'){
					_$wrapper.addClass("ebdp-pc4promote-normalbutton-normal");
					minWidth=85;
				}else if(_size=='small'){
					_$wrapper.addClass("ebdp-pc4promote-normalbutton-small");
					minWidth=60;
				}else if(_size=="lessnormal"){
					_$wrapper.addClass("ebdp-pc4promote-normalbutton-lessnormal");
					minWidth=75;
				}else if(_size=="smaller"){
					_$wrapper.addClass("ebdp-pc4promote-normalbutton-smaller");
					minWidth=28;
				}else{
					_$wrapper.addClass("ebdp-pc4promote-normalbutton-normal");//以normal
					minWidth=85;
				}
				
				
				_$wrapper.text(this.value);
				if (!this.enable) {
					_$wrapper
							.addClass("ebdp-pc4promote-normalbutton-wrapper-disabled");
					_$wrapper
							.removeClass("ebdp-pc4promote-normalbutton-wrapper");
				} else {
					
					_$wrapper.addClass("ebdp-pc4promote-normalbutton-wrapper-"+_style);
					
					_$wrapper.bind("click.inner", function() {
						if(_that.enable){
							if(_eventClick){
								  _eventClick(_attachData);
								}
						}
					});
					
					_$wrapper.hover(
						  function () {
							  if(_that.enable){
								  $(this).addClass("ebdp-pc4promote-normalbutton-wrapper-"+_style+"-hover");
							  }
						  },
						  function () {
							  if(_that.enable){
								  $(this).removeClass("ebdp-pc4promote-normalbutton-wrapper-"+_style+"-hover");
							  } 
						  }
					);
					
				}
				var len=this.value.length;
				(len < 4)?_$wrapper.width(minWidth):null;
			} else if (window._perbank_version_utb
					&& parseInt(window._perbank_version_utb, 10) == 2) {
				_$wrapper.hide();
				imgBlock=jQuery("<img/>").attr("src", _backImage).addClass("ebdp-pc4promote-normalbutton-wrapper-backImage");
				_$wrapper.after(imgBlock);
				//在混杂模式下a标签内套多层不响应点击事件
				imgBlock.bind("click.inner", function() {
					if(_eventClick){
					 _eventClick(_attachData);
					}
				});
			}
			

		};

		/**
		 * 设置按钮风格
		 * 
		 * @param style
		 * @return
		 */
		this.setStyle = function(style) {
			if(_style){
				//判断style是否在字典里
				if(jQuery.inArray(style,_styleArray)==-1){
					_style='orange';
				}else{
					_style = style;
				}		   
			}
		};
		/**
		 * 设置背景图片
		 * 
		 * @param backImage
		 * @return
		 */
		this.setBackImage = function(backImage) {
			_backImage = backImage;
		};

		/**
		 * 设置点击回调事件
		 * 
		 * @param width
		 * @return
		 */
		this.setEventClickHandler = function(eventClick) {
			_eventClick = eventClick;
		};
		
		/**
		 * 获取当前组件jQuery对象
		 * @return {Object}
		 */
		this.getJDom = function() {
			return _$wrapper;
		};

		/**
		 * 设置回调事件自定义参数
		 * 
		 * @param width
		 * @return
		 */
		this.setAttachData = function(attachData) {
			_attachData = attachData;
		};
		
		/**
		 * 设置按钮的size
		 * @param width
		 * @return 
		 */
		this.setSize = function(size) {
			if(_size){
			   _size = size;
			}
		};

		/**
		 * 设置是否可见
		 * 
		 * @param visible
		 */
		this.setVisible = function(visible) {
			if (this.visible != visible) {
				this.visible = visible;
				if (visible) {
					_$wrapper.show();
				} else {
					_$wrapper.hide();
				}
			}
		};
		
		/**
		 * 设置是否可用
		 * 
		 * @param visible
		 */
		this.setBTNEnable = function(enable) {
			if (this.enable != enable) {
				this.enable = enable;
				if (enable) {
					_$wrapper.addClass("ebdp-pc4promote-normalbutton-wrapper").addClass("ebdp-pc4promote-normalbutton-wrapper-"+_style).removeClass("ebdp-pc4promote-normalbutton-wrapper-disabled");
				} else {
					_$wrapper.addClass("ebdp-pc4promote-normalbutton-wrapper-disabled").removeClass("ebdp-pc4promote-normalbutton-wrapper").removeClass("ebdp-pc4promote-normalbutton-wrapper-"+_style);
				}
			}
		};
		
		
		
		/**
		 * 生成一个normalbutton
		 * @param 构件所需要的参数组成的json串
		 * @return
		 */
		this.create=function(paramJson){
		//对一些参数进行设置
			
			if (paramJson.enable != undefined) {
				this.setEnable(paramJson.enable);
			}
			if (paramJson.value != undefined) {
				this.setValue(paramJson.value);
			}
			if (paramJson.style != undefined) {
				this.setStyle(paramJson.style);
			}
			if (paramJson.size!= undefined) {
				this.setSize(paramJson.size);
			}
			if (paramJson.backImage != undefined) {
				this.setBackImage(paramJson.backImage);
			}
			if (paramJson.eventClick != undefined) {
				this.setEventClickHandler(paramJson.eventClick);
			}
			if (paramJson.attachData != undefined) {
				this.setAttachData(paramJson.attachData);
			}
			var html="<div id='"+this.id+"'></div>";
			_$wrapper=jQuery(html);
			this.show();
		};

		this.bindEvent = function(){
			var _that = this;
			if (window._perbank_version_utb
					&& parseInt(window._perbank_version_utb, 10) == 3){
				_$wrapper.bind("click.inner", function() {
					if(_that.enable){
						if(_eventClick){
							  _eventClick(_attachData);
							}
					}
				});
			} else if (window._perbank_version_utb
					&& parseInt(window._perbank_version_utb, 10) == 2){
				imgBlock.bind("click.inner", function() {
					if(_eventClick){
					 _eventClick(_attachData);
					}
				});
			}
		};
		
		this.unbindEvent = function(){
			var _that = this;
			if (window._perbank_version_utb
					&& parseInt(window._perbank_version_utb, 10) == 3){
				_$wrapper.unbind("click.inner");
			} else if (window._perbank_version_utb
					&& parseInt(window._perbank_version_utb, 10) == 2){
				imgBlock.unbind("click.inner");
			}
		};
	};
	
	
	
	
	_normalButton.prototype = new BaseUI();
	_normalButton.prototype.constructor = _normalButton;
	return _normalButton;
})();