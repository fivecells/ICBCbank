var FloatDialog = (function(){
	var _floatdialog = function(initData){
		/**********����˽�б����ͷ���**********/
		/** ����id */
		var id = initData.id;
		
		/** �ײ�frame */
		var _$overlayIframe = null;
		
		/** �ײ�div */
		var _$overlayDiv = null;
		
		/** �ϲ�������ݵ�div */
		var _$window = null;
		
		/** ����ʱ�ȴ�div */
		var _$loadDiv = null;
		
		/** ������ҳͼƬ */
		var _$backImage = null;
		
		/** �رո�����ͼƬ */
		var _$closeImage = null;
		
		/** �رո�����ť */
		var _$closeButton = null;
		
		/** ȷ�ϰ�ť */
		var _$confirmButton = null;
		
		/** ȡ����ť */
		var _$cancelButton = null;
		
		/** iframe���� */
		var _iframe = null;
		
		/** ����frame��window���� */
		var _$contentIframeWin = null;
		
		/**
		 * ���ظù���������
		 * 
		 * @return {String}
		 */
		var _getUIName = function() {
			return "floatdialog";
		};
		
		/** ����ر�ͼƬ�ص����� */
		var _eventClickCloseImage = (initData.eventClickCloseImage?initData.eventClickCloseImage:null);
		
		/** ��ťΪ�ر�ʱ,��ȡ���ݻص����� */
		var _eventGetResult = (initData.eventGetResult?initData.eventGetResult:null);
		
		/** ��ťΪȷ��ȡ��ʱ,��ȡȷ�����ݻص����� */
		var _eventGetConfirmResult = (initData.eventGetConfirmResult?initData.eventGetConfirmResult:null);
		
		/** ��ťΪȷ��ȡ��ʱ,��ȡȡ�����ݻص����� */
		var _eventGetCancelResult = (initData.eventGetCancelResult?initData.eventGetCancelResult:null);
		
		/** iframe������ص����� */
		var _eventIframeLoad = (initData.eventIframeLoad?initData.eventIframeLoad:null);
		
		/** ������Ƕ���jspҳ���ַ */
		var _url = (initData.url?initData.url:'');
		
		/** ���������� */
		var _width = (initData.width?initData.width:null);
		
		/** ��������߶� */
		var _height = (initData.height?initData.height:null);
		
		/** �رո����������ı� */
		var _closeButtonText = (initData.closeButtonText?initData.closeButtonText: '����');
		
		/** ȷ�ϰ�ť��ʾ���� */
		var _confirmButtonText = (initData.confirmButtonText?initData.confirmButtonText:'����');
		
		/** ȡ����ť��ʾ���� */
		var _cancelButtonText = (initData.cancelButtonText?initData.cancelButtonText:'ɾ��'); 
		
		/** ��������ʾλ��x */
		var _positionX = (initData.positionX?initData.positionX:null);
		
		/** ��������ʾλ��Y */
		var _positionY = (initData.positionY?initData.positionY:null);
		
		/** typeΪfloatʱ���Ƿ���йرհ�ť */
		var _floatType = initData.floatType?initData.floatType:'1';
		
		
		/** typeΪ1ʱ������������ֻ���м����� */
		var _type = initData.type?initData.type:"0";  
		
		/** isHideΪ1ʱ����ť�������� */
		var _isHide = initData.isHide?initData.isHide:"0";
		
		/** �Զ���button */
		var _defButton = initData.defButton?initData.defButton:[];
		
		var _defCommonEventClick = initData.defCommonEventClick?initData.defCommonEventClick:null;
		
		//��ʱ������
		var _intervalObj = null;
		
		//���ڿ��
		var _windowWidth = null;
		
		//���ڸ߶�
		var _windowHeight = null;
		
		/**
		 * ���ݷ���ֵ���ж��Ƿ���Ҫɾ��������false�Ļ��Ͳ�ɾ��
		 */
		function _notNeedRemove(param) { 
			var ret = true; 
			/** ȷ��ȡ����ť */
			if(_floatType!='0') {
				if(_floatType=='default'){
					if(_$contentIframeWin.fireDefEvent){
						ret = _$contentIframeWin.fireDefEvent();
					}
				}else{
					if(param == '1') {
						/** ȷ�� */
						if(_$contentIframeWin.fireConfirmEvent) {
							ret = _$contentIframeWin.fireConfirmEvent();
						}
					}
					if(param == '0') {
						/** ȡ�� */
						if(_$contentIframeWin.fireCancelEvent) {
							ret = _$contentIframeWin.fireCancelEvent();
						}
					}
				}
			}else{/** �رհ�ť */
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
		 * ���������
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
		 * ɾ��
		 */
		function _floatRemove(param,i) {
			_$loadDiv.remove();
			
			/** ȷ��ȡ����ť */
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
						/** ȷ�� */
						if(_$contentIframeWin.fireConfirmEvent) {
							var confirmResult = _$contentIframeWin.fireConfirmEvent();
				    		/** ִ�лص����� */
				    		if(_eventGetConfirmResult)
				    			_eventGetConfirmResult(confirmResult);
						}
					}
					if(param == '0') {
						/** ȡ�� */
						if(_$contentIframeWin.fireCancelEvent) {
							var cancelResult = _$contentIframeWin.fireCancelEvent();
				    		/** ִ�лص����� */
				    		if(_eventGetCancelResult)
				    			_eventGetCancelResult(cancelResult);
						}
					}
				}
			}else{/** �رհ�ť */
				if(param!='2') {
					if(_$contentIframeWin.fireEvent) {
			    		var result = _$contentIframeWin.fireEvent();
			    		/** ִ�лص����� */
			    		if(_eventGetResult)
			    			_eventGetResult(result);
					}
				}
	    	}
		}
		
	    /**
	     * �������������Сλ��
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
	     * ���õײ��С
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
	     * ���õȴ�����divλ��
	     */
	    function _setLoadDivPosition() {
	    	var pagesize = _getPageSize();
	    	var arrayPageScroll = _getPageScrollTop();
	    	_$loadDiv.css({left: (arrayPageScroll[0] + (pagesize[0] - 100)/2)+"px", top: (arrayPageScroll[1] + ((pagesize[1]-100)/2))+"px" }).css({display:"block"});
	    }

	    /**
	     * �õ�ҳ�����λ��
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
	     * �õ�ҳ���С
	     */
	    function _getPageSize(){
	    	var de = document.documentElement;
	    	var w = window.innerWidth || self.innerWidth || (de&&de.clientWidth) || document.body.clientWidth;
	    	var h = window.innerHeight || self.innerHeight || (de&&de.clientHeight) || document.body.clientHeight;
	    	arrayPageSize = new Array(w,h);
	    	return arrayPageSize;
	    }
	    
	    /**
	     * �����ײ�����
	     */
	    function _createOverlayArea() {
	    	/** �����ײ� */
    		jQuery("body").append("<iframe class='ebdp-floatdialog-overlayIframe' id='"+id+"'></iframe>" +
    				"<div class='ebdp-floatdialog-overlayDiv' id='ebdp-floatdialog-overlayDiv-"+id+"'></div>" +
    						"<div class='ebdp-floatdialog-window' id='ebdp-floatdialog-window-"+id+"'></div>");
    		_$overlayIframe = jQuery("#"+id);
    		_$overlayDiv = jQuery("#ebdp-floatdialog-overlayDiv-"+id);
    		_$window = jQuery("#ebdp-floatdialog-window-"+id);
	    	jQuery(window).scroll(_position);
	    	
	    	/** �����ײ�iframe��div�Ĵ�С */
	    	_setOverlaySize();
	    }
	    
	    /**
	     * ��������ʱ�ȴ�����
	     */
	    function _createLoadArea() {
	    	/** �����ȴ�div����͵������С */
	    	_$loadDiv = jQuery("<div id='ebdp-floatdialog-load-"+id+"' class='ebdp-floatdialog-waitImage'></div>");
	    	jQuery("body").append(_$loadDiv);
	    	_setLoadDivPosition();
	    }
	    
	    /**
	     * ����top����
	     */
		function _createTop() {
			var _topHtml = '<div class="ebdp-floatdialog-top">'
				+'<div class="ebdp-floatdialog-backImage"></div>'
				+'<div class="ebdp-floatdialog-closeImage"></div>'
				+'</div>';
			return _topHtml;
		};
		
		/**
		 * �����м���������
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
		 * ������ť����
		 */
		function _createButtonArea() {
			var _button = '<div class="ebdp-floatdialog-buttonDiv"></div>';
			return _button;
		}
		
		
		/**
		 * ������ť
		 */
		function _createButton(value) {
			//var _buttonHtml = '<input type="button" class="ebdp-floatdialog-button" ' +' value="' + value + '"/>';
			
			var _buttonHtml = '<div class="ebdp-floatdialog-button">'+value+'</div>';
			
			return _buttonHtml;
		}
		
		/**
		 * ����float���С
		 */
		function _resizeFloat() {
			_width = parseInt(_width, 10);
			_$window.find(".ebdp-floatdialog-middle").width(_width);
			_$window.find(".ebdp-floatdialog-buttonDiv").width(_width);
			_$window.find(".ebdp-floatdialog-middle").height(_height);
		}
		
		
		 /**
	     * ����ȷ����ȡ����ť
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
	     * �����رհ�ť
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
	     * �����Զ��尴ť
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
	     * ����������������
	     */
	    function _createFloatContentArea() {
	    	/** ���ü������������С */
	    	var pageSize = _getPageSize();
	    	if(!_width)
	    		_width = 478;
	    		//_width = pageSize[0] - 420; 
	    	if(!_height)
	    		_height = 186;
	    	   //_height = pageSize[1] - 250;
	    	
	    	/** ������������ */
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
	     * ���¼�
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
	     * ����������
	     */
	    function _createFloat() {
	    	_createOverlayArea();
	    	_createLoadArea();
	    	_createFloatContentArea();
			_bindEvent();
	    }
	    
	    /**
		 * ��⵱ǰ������Ƿ�ΪIE
		 */
		function isIE() {
			var ua = navigator.userAgent;
			if (ua.indexOf('MSIE')>-1) {
				return true;
			}
			//ie11�жϣ����userAgent�в�����msie�����ж��Ƿ���ActiveXObject����
			if(!!window.ActiveXObject || "ActiveXObject" in window) {
				return true;
			}
			return false;
		}
		
		/**
		 * ��⵱ǰIE������İ汾�Ƿ���8����
		 * return
		 * */
		function isIELess8AndQuirk(){
			return (isIE()&&parseInt(jQuery.browser.version,10)<8) ||( isIE()&&isQuirkMode());
		}
		
		/**
		 * ��⵱ǰҳ���Ƿ��ǹ���ģʽ
		 */
		function isQuirkMode() {
			return document.compatMode==="BackCompat";
		}
		
		/**
		 * ִ�ж�ʱ��setInterval�еķ���������Ŵ����Сҳ����ְױ�
		 */
		function setIframe(){
			_$overlayIframe.css("width",jQuery(top.window.document.body).width());
    		_$overlayIframe.css("height",jQuery(top.window.document.body).height());
    		_$overlayDiv.css("width",jQuery(top.window.document.body).width());
    		_$overlayDiv.css("height",jQuery(top.window.document.body).height());
		}
	    
	    	
		/**********����˽�б����ͷ���		End**********/
	
		
		/**********���幫�б����ͷ���**********/
		
	    /**
		 * ��ǰ���չ�ֽ�����۴���
		 */
		this.show = function(){
			/** ���������� */
			_createFloat.call(this);
			/** ��ʱ����Iframe/Div�Ŀ�Ⱥ͸߶� */
			_intervalObj = setInterval(setIframe,100);
		};

		/**
		 * ���ÿ��
		 * @param width
		 */
		this.setWidth = function(width){
			_width = width;
		};
		
		/**
		 * ���ø߶�
		 * @param height
		 */
		this.setHeight = function(height){
			_height = height;
		};
		/**********���幫�б����ͷ���		End**********/
	};
	return _floatdialog;
})();
