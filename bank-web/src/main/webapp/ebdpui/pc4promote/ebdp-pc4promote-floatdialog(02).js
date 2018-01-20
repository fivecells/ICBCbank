var FloatDialog = (function(){
	var _floatdialog = function(initData){
		/**********定义私有变量和方法**********/
		/** 构件id */
		var id = initData.id;
		
		/** 底层frame */
		var _$overlayIframe = null;
		
		/** 底层div */
		var _$overlayDiv = null;
		
		/** 上层加载内容的div */
		var _$window = null;
		
		/** 加载时等待div */
		var _$loadDiv = null;
		
		/** 返回主页图片 */
		var _$backImage = null;
		
		/** 关闭浮动框图片 */
		var _$closeImage = null;
		
		/** 关闭浮动框按钮 */
		var _$closeButton = null;
		
		/** 确认按钮 */
		var _$confirmButton = null;
		
		/** 取消按钮 */
		var _$cancelButton = null;
		
		/** iframe对象 */
		var _iframe = null;
		
		/** 内容frame的window对象 */
		var _$contentIframeWin = null;
		
		/**
		 * 返回该构件的名称
		 * 
		 * @return {String}
		 */
		var _getUIName = function() {
			return "floatdialog";
		};
		
		/** 点击关闭图片回调函数 */
		var _eventClickCloseImage = (initData.eventClickCloseImage?initData.eventClickCloseImage:null);
		
		/** 按钮为关闭时,获取数据回调函数 */
		var _eventGetResult = (initData.eventGetResult?initData.eventGetResult:null);
		
		/** 按钮为确定取消时,获取确定数据回调函数 */
		var _eventGetConfirmResult = (initData.eventGetConfirmResult?initData.eventGetConfirmResult:null);
		
		/** 按钮为确定取消时,获取取消数据回调函数 */
		var _eventGetCancelResult = (initData.eventGetCancelResult?initData.eventGetCancelResult:null);
		
		/** iframe加载完回调函数 */
		var _eventIframeLoad = (initData.eventIframeLoad?initData.eventIframeLoad:null);
		
		/** 浮动框嵌入的jsp页面地址 */
		var _url = (initData.url?initData.url:'');
		
		/** 内容区域宽度 */
		var _width = (initData.width?initData.width:null);
		
		/** 内容区域高度 */
		var _height = (initData.height?initData.height:null);
		
		/** 关闭浮动框链接文本 */
		var _closeButtonText = (initData.closeButtonText?initData.closeButtonText: '保存');
		
		/** 确认按钮显示内容 */
		var _confirmButtonText = (initData.confirmButtonText?initData.confirmButtonText:'保存');
		
		/** 取消按钮显示内容 */
		var _cancelButtonText = (initData.cancelButtonText?initData.cancelButtonText:'删除'); 
		
		/** 弹出框显示位置x */
		var _positionX = (initData.positionX?initData.positionX:null);
		
		/** 弹出框显示位置Y */
		var _positionY = (initData.positionY?initData.positionY:null);
		
		/** type为float时，是否具有关闭按钮 */
		var _floatType = initData.floatType?initData.floatType:'1';
		
		
		/** type为1时，弹出浮动框，只有中间内容 */
		var _type = initData.type?initData.type:"0";  
		
		/** isHide为1时，按钮区域隐藏 */
		var _isHide = initData.isHide?initData.isHide:"0";
		
		/** 自定义button */
		var _defButton = initData.defButton?initData.defButton:[];
		
		var _defCommonEventClick = initData.defCommonEventClick?initData.defCommonEventClick:null;
		
		//定时器对象
		var _intervalObj = null;
		
		//窗口宽度
		var _windowWidth = null;
		
		//窗口高度
		var _windowHeight = null;
		
		/**
		 * 根据返回值来判断是否需要删除，返回false的话就不删除
		 */
		function _notNeedRemove(param) { 
			var ret = true; 
			/** 确定取消按钮 */
			if(_floatType!='0') {
				if(_floatType=='default'){
					if(_$contentIframeWin.fireDefEvent){
						ret = _$contentIframeWin.fireDefEvent();
					}
				}else{
					if(param == '1') {
						/** 确定 */
						if(_$contentIframeWin.fireConfirmEvent) {
							ret = _$contentIframeWin.fireConfirmEvent();
						}
					}
					if(param == '0') {
						/** 取消 */
						if(_$contentIframeWin.fireCancelEvent) {
							ret = _$contentIframeWin.fireCancelEvent();
						}
					}
				}
			}else{/** 关闭按钮 */
				if(param!='2') {
					if(_$contentIframeWin.fireEvent) {
						ret = _$contentIframeWin.fireEvent();
					}
				}
	    	}
			if(typeof ret=='boolean' && ret == false) {  
				return true;
			}
			return false; 
		}
		
		
		/**
		 * 清除浮动框
		 */
		function _remove(param,i) {
			if(_notNeedRemove(param)) {
				return false;
			}
			
	    	_$overlayDiv.unbind("click");
	    	_$closeImage.unbind("click");
	    	
	    	_$window.fadeOut("fast",function(){
	    		_$overlayIframe.remove();
	    		_$overlayDiv.remove();
	    		_$window.remove();
	    		clearInterval(_intervalObj);
	    	});
	    	if(_floatType!='0') {
	    		if(_floatType=='default'){
	    			_$defButton.unbind("click");
	    		}else{
	    			_$confirmButton.unbind('click');
	    	    	_$cancelButton.unbind('click');
	    		}
	    	}
	    	_floatRemove(param,i);
	    	return false;
	    }
		
		/**
		 * 删除
		 */
		function _floatRemove(param,i) {
			_$loadDiv.remove();
			
			/** 确定取消按钮 */
			if(_floatType!='0') {
				if(_floatType=='default'){
					if(param != '2'){
						if(_$contentIframeWin.fireDefEvent){
							var fireDefResult = _$contentIframeWin.fireDefEvent();
							if(_defButton[i].eventClick){
								(_defButton[i].eventClick)(_defButton[i].value,_defButton[i].attachData,fireDefResult);
							}
							if(_defCommonEventClick){
								_defCommonEventClick(fireDefResult);
							}
						}
					}
				}else{
					if(param == '1') {
						/** 确定 */
						if(_$contentIframeWin.fireConfirmEvent) {
							var confirmResult = _$contentIframeWin.fireConfirmEvent();
				    		/** 执行回调函数 */
				    		if(_eventGetConfirmResult)
				    			_eventGetConfirmResult(confirmResult);
						}
					}
					if(param == '0') {
						/** 取消 */
						if(_$contentIframeWin.fireCancelEvent) {
							var cancelResult = _$contentIframeWin.fireCancelEvent();
				    		/** 执行回调函数 */
				    		if(_eventGetCancelResult)
				    			_eventGetCancelResult(cancelResult);
						}
					}
				}
			}else{/** 关闭按钮 */
				if(param!='2') {
					if(_$contentIframeWin.fireEvent) {
			    		var result = _$contentIframeWin.fireEvent();
			    		/** 执行回调函数 */
			    		if(_eventGetResult)
			    			_eventGetResult(result);
					}
				}
	    	}
		}
		
	    /**
	     * 调整内容区域大小位置
	     */
	    function _position() {
	    	var pagesize = _getPageSize();	
	    	// var pageScrollTop = document.documentElement.scrollTop || document.body.scrollTop;	
	    	
	    	if(!_positionX) {
	    		_positionX = ((pagesize[0]-_width)/2)+"px";
	    	}
	    	if(!_positionY) {
	    		_positionY = ((pagesize[1]-_height)/2)+"px";
	    	} 
	    	_$window.css({width:_width+"px",left: _positionX, top: _positionY }); 
	    } 

	    /**
	     * 设置底层大小
	     */
	    function _setOverlaySize(){
	    	if (window.innerHeight && window.scrollMaxY || window.innerWidth && window.scrollMaxX) {	
	    		yScroll = window.innerHeight + window.scrollMaxY;
	    		xScroll = window.innerWidth + window.scrollMaxX;
	    		var deff = document.documentElement;
	    		var wff = (deff&&deff.clientWidth) || document.body.clientWidth || window.innerWidth || self.innerWidth;
	    		var hff = (deff&&deff.clientHeight) || document.body.clientHeight || window.innerHeight || self.innerHeight;
	    		xScroll -= (window.innerWidth - wff);
	    		yScroll -= (window.innerHeight - hff);
	    	} else if (document.body.scrollHeight > document.body.offsetHeight || document.body.scrollWidth > document.body.offsetWidth){ /** all but Explorer Mac */
	    		yScroll = document.body.scrollHeight;
	    		xScroll = document.body.scrollWidth;
	    	} else { /** Explorer Mac...would also work in Explorer 6 Strict, Mozilla and Safari */
	    		yScroll = parseInt(document.body.offsetHeight,10);    
	    		xScroll = document.body.offsetWidth;
	      	} 
	    	if(xScroll< jQuery("body").outerWidth()) {
	    		xScroll = jQuery("body").outerWidth();
	    	}
	    	
	    	_$overlayDiv.css({"height":yScroll +"px", "width":xScroll +"px"});
	    	_$overlayIframe.css({"height":yScroll +"px","width":xScroll +"px"}); 
	    }

	    /**
	     * 设置等待区域div位置
	     */
	    function _setLoadDivPosition() {
	    	var pagesize = _getPageSize();
	    	var arrayPageScroll = _getPageScrollTop();
	    	_$loadDiv.css({left: (arrayPageScroll[0] + (pagesize[0] - 100)/2)+"px", top: (arrayPageScroll[1] + ((pagesize[1]-100)/2))+"px" }).css({display:"block"});
	    }

	    /**
	     * 得到页面滚动位置
	     */
	    function _getPageScrollTop(){
	    	var yScrolltop;
	    	var xScrollleft;
	    	if (self.pageYOffset || self.pageXOffset) {
	    		yScrolltop = self.pageYOffset;
	    		xScrollleft = self.pageXOffset;
	    	} else if (document.documentElement && document.documentElement.scrollTop || document.documentElement.scrollLeft ){/** Explorer 6 Strict */
	    		yScrolltop = document.documentElement.scrollTop;
	    		xScrollleft = document.documentElement.scrollLeft;
	    	} else if (document.body) {/** all other Explorers */
	    		yScrolltop = document.body.scrollTop;
	    		xScrollleft = document.body.scrollLeft;
	    	}
	    	arrayPageScroll = new Array(xScrollleft,yScrolltop);
	    	return arrayPageScroll;
	    }
	    
	    /**
	     * 得到页面大小
	     */
	    function _getPageSize(){
	    	var de = document.documentElement;
	    	var w = window.innerWidth || self.innerWidth || (de&&de.clientWidth) || document.body.clientWidth;
	    	var h = window.innerHeight || self.innerHeight || (de&&de.clientHeight) || document.body.clientHeight;
	    	arrayPageSize = new Array(w,h);
	    	return arrayPageSize;
	    }
	    
	    /**
	     * 创建底层区域
	     */
	    function _createOverlayArea() {
	    	/** 创建底层 */
    		jQuery("body").append("<iframe class='ebdp-floatdialog-overlayIframe' id='"+id+"'></iframe>" +
    				"<div class='ebdp-floatdialog-overlayDiv' id='ebdp-floatdialog-overlayDiv-"+id+"'></div>" +
    						"<div class='ebdp-floatdialog-window' id='ebdp-floatdialog-window-"+id+"'></div>");
    		_$overlayIframe = jQuery("#"+id);
    		_$overlayDiv = jQuery("#ebdp-floatdialog-overlayDiv-"+id);
    		_$window = jQuery("#ebdp-floatdialog-window-"+id);
	    	jQuery(window).scroll(_position);
	    	
	    	/** 调整底层iframe和div的大小 */
	    	_setOverlaySize();
	    }
	    
	    /**
	     * 创建加载时等待区域
	     */
	    function _createLoadArea() {
	    	/** 创建等待div区域和调整其大小 */
	    	_$loadDiv = jQuery("<div id='ebdp-floatdialog-load-"+id+"' class='ebdp-floatdialog-waitImage'></div>");
	    	jQuery("body").append(_$loadDiv);
	    	_setLoadDivPosition();
	    }
	    
	    /**
	     * 创建top区域
	     */
		function _createTop() {
			var _topHtml = '<div class="ebdp-floatdialog-top">'
				+'<div class="ebdp-floatdialog-backImage"></div>'
				+'<div class="ebdp-floatdialog-closeImage"></div>'
				+'</div>';
			return _topHtml;
		};
		
		/**
		 * 创建中间内容区域
		 */
		function _createFloatMiddle() {
			var _middleHtml = ""+ 
			'<div class="ebdp-floatdialog-middle" >'+ 
				'<iframe border="none" frameborder="no" id="ebdp-floatdialog-iframe" name="ebdp-floatdialog-iframe"  frameBorder="0" marginWidth="0" marginHeight="0"  class="ebdp-floatdialog-contentFloat"' +' src="' +_url+ '" width="' +(_width)+ '" height="'+_height+ '" ></iframe>' +
			'</div>';
			return _middleHtml;
		}
		
		function _createFloatMiddleType1() {
			var _middleHtml = ""+ 
			'<div class="ebdp-floatdialog-middle ebdp-floatdialog-position" >'+
				'<iframe border="none" frameborder="no" id="ebdp-floatdialog-iframe" name="ebdp-floatdialog-iframe" frameBorder="0" marginWidth="0" marginHeight="0"  class="ebdp-floatdialog-contentFloat"' +' src="' +_url+ '" width="' +(_width)+ '" height="'+_height+ '" ></iframe>' +
				'<div class="ebdp-floatdialog-closeImage-type1">x</div>'+
			'</div>';
			return _middleHtml; 
		}
		
		/**
		 * 创建按钮区域
		 */
		function _createButtonArea() {
			var _button = '<div class="ebdp-floatdialog-buttonDiv"></div>';
			return _button;
		}
		
		
		/**
		 * 创建按钮
		 */
		function _createButton(value) {
			//var _buttonHtml = '<input type="button" class="ebdp-floatdialog-button" ' +' value="' + value + '"/>';
			
			var _buttonHtml = '<div class="ebdp-floatdialog-button">'+value+'</div>';
			
			return _buttonHtml;
		}
		
		/**
		 * 调整float框大小
		 */
		function _resizeFloat() {
			_width = parseInt(_width, 10);
			_$window.find(".ebdp-floatdialog-middle").width(_width);
			_$window.find(".ebdp-floatdialog-buttonDiv").width(_width);
			_$window.find(".ebdp-floatdialog-middle").height(_height);
		}
		
		
		 /**
	     * 创建确定和取消按钮
	     */
	    function _createConfirmCancelButton() {
	 		var _$confirmButtonDiv = _$window.find('.ebdp-floatdialog-buttonDiv');
	    	_$confirmButtonDiv.append('<div class="ebdp-floatdialog-cancelbutton"></div><div class="ebdp-floatdialog-confirmbutton"></div>');
	    	var _$confirmButtonArea = _$confirmButtonDiv.find(".ebdp-floatdialog-confirmbutton");
	    	_$confirmButtonArea.addClass("ebdp-button-buttonDiv");
	    	
	    	var _$cancelButtonArea = _$confirmButtonDiv.find(".ebdp-floatdialog-cancelbutton");
	    	_$cancelButtonArea.addClass("ebdp-button-buttonDiv");
	    	
	    	_$confirmButton = jQuery(_createButton(_confirmButtonText)); 
	    	_$cancelButton = jQuery(_createButton(_cancelButtonText));
	    	
	    	_$confirmButton.addClass("ebdp-floatdialog-button-red").appendTo(_$confirmButtonArea);
	    	_$cancelButton.addClass("ebdp-floatdialog-button-gray").appendTo(_$cancelButtonArea); 
	    	
	    	if(isIELess8AndQuirk()) {
	    		//_$confirmButtonDiv.find(".ebdp-floatdialog-button").css('margin-top','15px'); 
	    	}
	    	
	    	
	    	_$confirmButton.bind('click', function() {
	    		_remove('1');
	    	});
	    	
	    	_$cancelButton.bind('click', function(){
	    		_remove('0');
	    	});
	    	
	    	if(_isHide == "1") {
	    		_$confirmButtonDiv.hide(); 
	    	}
	    }
	    
	    /**
	     * 创建关闭按钮
	     */
	    function _createCloseButton() {
	    	var _$closeButtonDiv = _$window.find('.ebdp-floatdialog-buttonDiv');
	    	_$closeButtonDiv.append('<div class="ebdp-floatdialog-closebutton"></div>');
	    	var _$closeButtonArea = _$closeButtonDiv.find(".ebdp-floatdialog-closebutton");
	    	_$closeButtonArea.addClass("ebdp-button-buttonDiv");   
	    	 
	    	_$closeButton = jQuery(_createButton(_closeButtonText));
	    	_$closeButton.addClass("ebdp-floatdialog-button-red").appendTo(_$closeButtonArea);     
	    	
	    	_$closeButton.bind('click', function(){
	    		_remove();
	    	});
	    	_$closeButtonDiv.hide();
	    }
	    
	    /**
	     * 创建自定义按钮
	     */
	    function  _createDefButton(){
	    	var _$defButtonDiv = _$window.find('.ebdp-floatdialog-buttonDiv');
	    	var defButtonHTML="";
	    	var _$defButtonArea=null;
	    	var _$defButton=null;
	    	
	    	for(var i=0;i<_defButton.length;i++){
	    		if(_defButton[i].text){
	    			defButtonHTML=''+'<div class="ebdp-floatdialog-defbutton ebdp-button-buttonDiv">';
	    			defButtonHTML=defButtonHTML+_createButton(_defButton[i].text);
	    			defButtonHTML=defButtonHTML+'</div>';
	    			_$defButtonArea=jQuery(defButtonHTML);
	    			_$defButtonDiv.append(_$defButtonArea);
	    			_$defButton=_$defButtonArea.find('.ebdp-floatdialog-button').addClass(_defButton[i].defClass).attr('index',i);
	    			
	    			if(_defButton[i].enable!=false){
	    				_$defButton.bind('click', function(){
	    		    		_remove('default',jQuery(this).attr('index'));
	    		    	});
	    			}else{
	    				_$defButton.addClass('ebdp-floatdialog-button-disable');
	    			}
	    		}
	    	}
	    	
	    	
	    }
	    
	    /**
	     * 创建加载内容区域
	     */
	    function _createFloatContentArea() {
	    	/** 设置加载内容区域大小 */
	    	var pageSize = _getPageSize();
	    	if(!_width)
	    		_width = 478;
	    		//_width = pageSize[0] - 420; 
	    	if(!_height)
	    		_height = 186;
	    	   //_height = pageSize[1] - 250;
	    	
	    	/** 创建内容区域 */
	    	var _floatHtml = '';
	    	if(_type=='1') {
	    		_floatHtml = _createFloatMiddleType1();  
	    	}else {
	    		_floatHtml =  _createTop()+_createFloatMiddle() + _createButtonArea();
	    	}
	    	_$window.append(_floatHtml);
	    	
	    	if(_floatType!='0') {
	    		if(_floatType=='default'){
	    			_createDefButton();
	    		}else{
	    			_createConfirmCancelButton();
	    		}
	    		
	    	}else {
	    		_createCloseButton();
	    	}
	    	
	    	if(_type=='1') {
	    		_$closeImage = _$window.find(".ebdp-floatdialog-closeImage-type1");
	    	}else {
	    		_$closeImage = _$window.find(".ebdp-floatdialog-closeImage");
	    	}
	    	
	    	_$closeImage.bind('click', function(){
	    		_remove('2');
	    		if(_eventClickCloseImage){
	    			_eventClickCloseImage();
	    		}
	    	});
	    	 
	    	_$backImage = _$window.find(".ebdp-floatdialog-backImage");
	    	_$backImage.hide();
	    	
	    	var _iframe = jQuery(".ebdp-floatdialog-contentFloat")[0];
	    	//alert(_iframe); 
	    	/**_iframe.onload = function() {
	    		console.log("2222222222"); 
	    		if(_eventIframeLoad) {
	    			_eventIframeLoad();  
	    		} 
	    	};*/
	    	jQuery(".ebdp-floatdialog-contentFloat").bind("load", function() { 
	    		if(_eventIframeLoad) {
	    			_eventIframeLoad();   
	    		} 
	    	});
	    	
	    	
	    	_$contentIframeWin = _iframe.contentWindow;
	    	_position();
	      	_resizeFloat();
	    	_$loadDiv.hide();
			_$window.css({display:"block"}); /** for safari using css instead of show */
    		jQuery(window).resize(_position);
	    }
	    
	    /**
	     * 绑定事件
	     */
	    function _bindEvent() {
	    	
	    	document.onkeydown = function(e){ 	
				if (e == null) { // ie
					keycode = event.keyCode;
				} else { // mozilla
					keycode = e.which;
				}
				if(keycode == 27){ // close
					_remove();
				}
			};
	    	document.onkeyup = function(e){ 	
    			if (e == null) { // ie
    				keycode = event.keyCode;
    			} else { // mozilla
    				keycode = e.which;
    			}
    			if(keycode == 27){ // close
    				_remove();
    			}	
    		};
	    }
	    
	    /**
	     * 创建浮动框
	     */
	    function _createFloat() {
	    	_createOverlayArea();
	    	_createLoadArea();
	    	_createFloatContentArea();
			_bindEvent();
	    }
	    
	    /**
		 * 检测当前浏览器是否为IE
		 */
		function isIE() {
			var ua = navigator.userAgent;
			if (ua.indexOf('MSIE')>-1) {
				return true;
			}
			//ie11判断，如果userAgent中不含有msie，则判断是否有ActiveXObject对象
			if(!!window.ActiveXObject || "ActiveXObject" in window) {
				return true;
			}
			return false;
		}
		
		/**
		 * 检测当前IE浏览器的版本是否是8以下
		 * return
		 * */
		function isIELess8AndQuirk(){
			return (isIE()&&parseInt(jQuery.browser.version,10)<8) ||( isIE()&&isQuirkMode());
		}
		
		/**
		 * 检测当前页面是否是诡异模式
		 */
		function isQuirkMode() {
			return document.compatMode==="BackCompat";
		}
		
		/**
		 * 执行定时器setInterval中的方法，解决放大或缩小页面出现白边
		 */
		function setIframe(){
			_$overlayIframe.css("width",jQuery(top.window.document.body).width());
    		_$overlayIframe.css("height",jQuery(top.window.document.body).height());
    		_$overlayDiv.css("width",jQuery(top.window.document.body).width());
    		_$overlayDiv.css("height",jQuery(top.window.document.body).height());
		}
	    
	    	
		/**********定义私有变量和方法		End**********/
	
		
		/**********定义公有变量和方法**********/
		
	    /**
		 * 当前组件展现进行外观处理
		 */
		this.show = function(){
			/** 创建浮动框 */
			_createFloat.call(this);
			/** 定时设置Iframe/Div的宽度和高度 */
			_intervalObj = setInterval(setIframe,100);
		};

		/**
		 * 设置宽度
		 * @param width
		 */
		this.setWidth = function(width){
			_width = width;
		};
		
		/**
		 * 设置高度
		 * @param height
		 */
		this.setHeight = function(height){
			_height = height;
		};
		/**********定义公有变量和方法		End**********/
	};
	return _floatdialog;
})();
