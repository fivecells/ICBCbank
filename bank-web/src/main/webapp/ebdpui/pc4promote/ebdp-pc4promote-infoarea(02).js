/**
 * 信息块构件对象
 */
var InfoArea = (function(){
	
	function _infoarea(id) {
		
		/** 信息块类型,分为large、middle、small、image四种  */
		var _type = null;
		
		/** 当type为image时，flag可以为0、1、2，分别为大、中、小，默认为0 */
		var _flag = null;
		
		/** 标题文本 */
		var _titleText = null;
		
		/** 标题推荐文字 */
		var _titleIntro = null;
		
		/** 标题偏移距离 */
		var _titleOffset = null;
		
		/** 标题颜色 */
		var _titleColor = null;
		
		/** 类型，股票或者保本等 */
		var _kind = null;
		
		/** 收益文本 */
		var _profitText = null;
		/** 收益文本颜色 */
		var _profitTextColor = null;
		
		/** 收益内容  */
		var _profitValue = null;
		
		/** 收益内容大小 */
		var _profitValueSize = null;
		
		/** 收益内容颜色 */
		var _profitValueColor = null;
		
		/** 收益内容颜色 */
		var _profitValueWeight = null;
		
		/** profit距上面的距离 */
		var _paddingTop="24";
		
		/** 按钮文本 */
		var _buttonText = null;
		
		/** 内容区域距左边界距离 */
		var _leftOffset = null;
		
		/** 点击事件 */
		var _eventClick = null;
		
		/** 附加数据 */
		var _attachData = null;
		//end for parameter
		
		/** 信息框对象 */
		var _$infoarea = jQuery("#"+id);
		
		/** 标题对象 */
		var _$title = _$infoarea.find(".ebdp-pc4promote-infoarea-title");
		
		/** 标题文本对象 */
		var _$titleText = _$title.find(".ebdp-pc4promote-infoarea-title-text");
		
		/** 标题推荐对象 */
		var _$titleIntro = _$title.find(".ebdp-pc4promote-infoarea-title-introduce"); 
		
		/** 内容对象 */
		var _$content = _$infoarea.find(".ebdp-pc4promote-infoarea-content");
		
		/** 类型对象 */
		var _$kind = _$content.find(".ebdp-pc4promote-infoarea-kind-wrapper");
		
		/** 收益对象 */
		var _$profit = _$content.find(".ebdp-pc4promote-infoarea-profit"); 
		
		/** 收益文本对象 */
		var _$profitText = _$profit.find(".ebdp-pc4promote-infoarea-profit-text");
		
		/** 收益值对象 */
		var _$profitValue = _$profit.find(".ebdp-pc4promote-infoarea-profit-value");
		
		/** 按钮对象 */
		var _$button = _$content.find(".ebdp-pc4promote-infoarea-button");
		
		/** 信息框外面ul对象 */
		var _$ul = _$infoarea.parent("ul");
		
		/** 信息框外面wrapper对象 */
		var _$wrapper = _$ul.parent("div");
		
		var _self=this;
		
		var _enable = true;
		
		/**
		 * 解除事件
		 */
		function _unbindEvent() {
			_$button.unbind("mouseover").unbind("mouseout");
			_$infoarea.unbind("click");
			
			if(_type=='small') {
				_$titleText.unbind("mouseover").unbind("mouseout");
			}
		}
		
		 /**
	     * 文本长度检测元素
	     * 文本是否超出产生省略号的判断方法是通过复制一个相同文本的元素，但去掉ellipsis功能，根据两元素的长度来判断
	     */
	   var _tester = {
	    	_tester: null,
	    	testWidth : function(option){
	    		if(this._tester == null){
	    			this._tester = jQuery("<div id=\"ebdp-pc4promote-infoarea-tester\"></div>"); 
	    			this._tester.addClass("ebdp-pc4promote-infoarea-text-tester");
	    		}
	    		this._tester.css(option.style);
	    		option.origen.after(this._tester);
	    		var _width = this._tester.html(option.text).width();
	    		if(_isAfterLoad()) {
	    			_width = this._tester.html(option.text).outerWidth();
	    		}
	    		this._tester.remove();
	    		return parseInt(_width,10);
	    	}
	    };
	   
		
		/**
		 * 绑定事件
		 */
		function _bindEvent() {
			_unbindEvent();
			
			/** 点击事件绑定 */
			_$infoarea.bind("click", function(){
				if(_eventClick) {
					_eventClick(_attachData);
				}
			});
			
			/** 鼠标mouseover事件 */
			_$button.mouseover(function(){ 
				_$button.addClass("ebdp-pc4promote-infoarea-button-hover");
			}).mouseout(function(){				
				_$button.removeClass("ebdp-pc4promote-infoarea-button-hover");
			}); 
			
			if(_type=='small'||_type=='middle'||_type=='large') {
				
				_$titleText.mouseover(function(){   
					var $thisObj = jQuery(this);
					$thisObj.addClass("ebdp-pc4promote-infoarea-title-over"); 
					var text = $thisObj.text();
					var _optionStyle = {'font-size':'20px'};
					
					if($thisObj.hasClass("ebdp-pc4promote-infoarea-title-text-large")) {
						_optionStyle = {'font-size':'20px'}; 
					}else if($thisObj.hasClass("ebdp-pc4promote-infoarea-title-text-middle")) {
						_optionStyle = {'font-size':'18px'};
					}else if($thisObj.hasClass("ebdp-pc4promote-infoarea-title-text-small")) {
						_optionStyle = {'font-size':'16px'};
					}
					
					var _virtual = _tester.testWidth({
						text:text, 
						style: _optionStyle, 
						origen:$thisObj
					});
					
		    		if(_virtual > _$titleText.width()) {    
		    			MouseOverTip.getInstance().show(jQuery(this).attr("id"),"",jQuery(this).text());	
		    		}
				}).mouseout(function(){
					jQuery(this).removeClass("ebdp-pc4promote-infoarea-title-over");
					MouseOverTip.getInstance().hide(); 
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
		
		 function _getPosition(e){
				var x = 0;
				var y = 0;
				var es = e.style;
				var restoreStyles = false;
				if (jQuery(e).css('display') == 'none') {
					var oldVisibility = es.visibility;
					var oldPosition = es.position;
					restoreStyles = true;
					es.visibility = 'hidden';
					es.display = '';
					es.position = 'absolute';
				}
				var el = e;
				while (el){
					x += el.offsetLeft + (el.currentStyle && !jQuery.browser.opera ?parseInt(el.currentStyle.borderLeftWidth)||0:0);
					y += el.offsetTop + (el.currentStyle && !jQuery.browser.opera ?parseInt(el.currentStyle.borderTopWidth)||0:0);
					el = el.offsetParent;
				}
				el = e;
				while (el && el.tagName  && el.tagName.toLowerCase() != 'body')
				{
					x -= el.scrollLeft||0;
					y -= el.scrollTop||0;
					el = el.parentNode;
				}
				if (restoreStyles == true) {
					es.display = 'none';
					es.position = oldPosition;
					es.visibility = oldVisibility;
				}
				return {x:x, y:y};
			}
		
		
		/**
		 * 执行show函数体
		 */
		function _executeShowBody() {
			_$ul.addClass("ebdp-pc4promote-infoarea-ul"); 
			if(_type == 'middle') {
				_$wrapper.addClass("ebdp-pc4promote-infoarea-wrap ebdp-pc4promote-infoarea-wrap-middle"); 
			}else if(_type == 'large') {
				_$wrapper.addClass("ebdp-pc4promote-infoarea-wrap ebdp-pc4promote-infoarea-wrap-large");
			}else if(_type == 'small') {
				_$wrapper.addClass("ebdp-pc4promote-infoarea-wrap ebdp-pc4promote-infoarea-wrap-small"); 
			}else if(_type == 'image') {
				if(_flag=='0') {
					_$wrapper.addClass("ebdp-pc4promote-infoarea-wrap ebdp-pc4promote-infoarea-wrap-image-large");
				}else if(_flag=='1') {
					_$wrapper.addClass("ebdp-pc4promote-infoarea-wrap ebdp-pc4promote-infoarea-wrap-image-middle");
				}else if(_flag=='2') {
					_$wrapper.addClass("ebdp-pc4promote-infoarea-wrap ebdp-pc4promote-infoarea-wrap-image-small");
				}
			}
			if(_titleText)
				_$titleText.text(_titleText);
			
			if(_titleIntro) {
				_$titleIntro.text(_titleIntro);
			}else {
				_$titleIntro.hide();
			}
			
			if(_titleIntro) {
				_$titleIntro.text(_titleIntro);
			}else {
				_$titleIntro.hide();
			}
			
			if(_titleColor) {
				_$titleText.css('color',_titleColor); 
				_$titleText.parent(".ebdp-pc4promote-infoarea-title").css('color',_titleColor);   
			}
			
			if(_type!='image') {
				if(_kind) {
					_$kind.empty();
					var kindArray=_profitText.split("|");
					var kindHtml="";
					for(var i=0;i<kindArray.length;i++){
						if(kindArray[i]!=""){
							kindHtml=kindHtml+'<span>'+kindArray[i]+'</span>';
						}	
					}
					_$kind.append(kindHtml);
				}else {
					_$kind.hide();
				}
			}
			
			if(_profitText) {
				_$profitText.empty();
				var profitTextArray=_profitText.split("|");
				var profitHtml="";
				for(var i=0;i<profitTextArray.length;i++){
					profitHtml=profitHtml+'<span class="ebdp-pc4promote-infoarea-profit-sub">'+profitTextArray[i]+'</span>';
				}
				_$profitText.append(profitHtml);				
			}
			
			if(_profitValue) {
				_$profitValue.text(_profitValue);
			}else{
				_$profitValue.css("display","inline-block");//ie8有高度问题
			}
			
			if(_profitText||_profitValue){//ie11有高度的问题
				_$profit.css("height","auto");
			}else{
				_$profit.css("height","0px");
			}
			
			if(_profitTextColor) {
				_$profitText.css('color',_profitTextColor);  
			}
			
			if(_profitValueSize) {
				_$profitValue.css('font-size',_profitValueSize+'px');  
			}
			
			if(_profitValueColor) { 
				_$profitValue.css("color", _profitValueColor);
			}
			
			if(_profitValueWeight) { 
				_$profitValue.css("font-weight", _profitValueWeight);
			}
			
			if(_paddingTop){
				_$profit.css("padding-top",_paddingTop+"px");
			}
			
			if(_buttonText) {
				_$button.text(_buttonText);				
			}
			
			/** 计算content的宽度 */
			if(_type!='image') { 
				var titleWidth = _$titleText.width()+_$titleIntro.width();
				var totalWidth = _$infoarea.width();
				if(_type=='large') {
					totalWidth = 296;
				}else if(_type=='middle') { 
					totalWidth = 280;
				}else if(_type=='small') { 
					totalWidth = 196; 
				} 
				var contentWidth = _$content.width();
				if(totalWidth <= contentWidth) {   
					_$title.width(totalWidth);
					_$content.width(totalWidth-10);
					_$profit.width(totalWidth-10);
				}else {
					var leftOffset = (totalWidth-_$content.width())/2;
					if(_leftOffset) {
						leftOffset = parseInt(_leftOffset,10); 
					}
					_$title.width(totalWidth-10);      
					_$content.width(totalWidth-leftOffset);  
					_$profit.width(totalWidth-leftOffset);  
				}
//				_$button.hide();
				
				/** 如果标题超长，推荐图标显示 */
				if(titleWidth > totalWidth) {
					_$titleText.width(totalWidth-30);  
				}
			}
			if(_enable){
				_bindEvent();
			}else{
				_unbindEvent();
				_$button.css("background-color","#ddd");
			}
		}
		
		this.setBtnTop=function(ulObj){
			if(_$profit.length>0){
				if(!ulObj)ulObj=_$ul;
				var culBtnTop=function(obj){
					var contentObj=obj.find(".ebdp-pc4promote-infoarea-content");
					var temptop=obj.find(".ebdp-pc4promote-infoarea-button").removeAttr("style").position().top;
					if(contentObj.is(":hidden")){
						var contentObj=contentObj.clone().appendTo(jQuery("body")).css({"display":"absolute","top":"-1000px"});//需要显示出来在计算
						temptop=contentObj.find(".ebdp-pc4promote-infoarea-button").removeAttr("style").position().top;
						contentObj.remove();
					}
					return temptop;
				};
				var top=culBtnTop(ulObj.children("li").first());
				
				ulObj.children("li").each(function(i){
					if(i>0){
						var temptop=culBtnTop(jQuery(this));						
						if(temptop<top&&temptop>0){
							top=temptop;
						}
					}
				});	
				ulObj.children("li").find(".ebdp-pc4promote-infoarea-button").css("top",top);//设置按钮位置对齐
				
			}
		};
		
		/**
		 * 当前组件展现进行外观处理
		 */
		this.show = function(){
			if(_isAfterLoad()) {
				jQuery(function(){
					_executeShowBody();
					//ie8以下table-cell不好用，动态设置一下高度
					_$ul.children("li").css("height",_$ul.height());
				});
			}else {
				_executeShowBody();
			}
			jQuery(function(){
				if(_$ul.attr("setAtrr")==undefined){
					_$ul.children("li:last").css("border","none");	
					_self.setBtnTop(_$ul);
					_$ul.attr("setAtrr","hasSet");
				}
				if(!_enable){
					_$button.css("background-color","#ddd");
				}
			});
		};
		
		/**
		 * 设置profitValue的css属性
		 * @param cssName,如果只有一个参数，那么cssName应该是一个json对象。
		 * @param cssValue
		 */
		this.setProfitStyle = function(cssName, cssValue) {
			if(arguments.length == 1) {
				_$profitValue.css(cssName);
			}else if(arguments.length == 2) {
				_$profitValue.css(cssName, cssValue); 
			}
		};
		
		/**
		 * 设置类型
		 * @param type
		 */
		this.setType = function(type) {
			_type = type; 
		};
		
		/**
		 * 设置flag
		 * @param flag
		 */
		this.setFlag = function(flag) {
			_flag = flag;
		};
		
		/**
		 * 设置titleText
		 * @param titleText
		 */
		this.setTitleText = function(titleText) {
			_titleText = titleText;  
		};
		
		/**
		 * 设置titleIntro
		 * @param titleIntro
		 */
		this.setTitleIntro = function(titleIntro) {
			_titleIntro = titleIntro;
		};
		
		/**
		 * 设置titleOffset
		 * @param titleOffset
		 */
		this.setTitleOffset = function(titleOffset) {
			_titleOffset = titleOffset;  
		};
		
		/**
		 * 设置titleColor
		 * @param titleColor
		 */
		this.setTitleColor = function(titleColor) {
			_titleColor = titleColor;
		};
		
		/**
		 * 设置kind
		 * @param kind
		 */
		this.setKind = function(kind) {
			_kind = kind;
		};
		
		/**
		 * 设置profitText
		 * @param profitText
		 */
		this.setProfitText = function(profitText) {
			_profitText = profitText;
		};
		
		this.setProfitTextColor = function(profitTextColor) {
			_profitTextColor = profitTextColor;
		};
		
		/**
		 * 设置profitValue
		 * @param profitValue
		 */
		this.setProfitValue = function(profitValue) {
			_profitValue = profitValue; 
		};
		
		/**
		 * 设置profitValueSize
		 * @param profitValueSize
		 */
		this.setProfitValueSize = function(profitValueSize) {
			_profitValueSize = profitValueSize; 
		};
		
		this.setProfitValueWeight = function(profitValueWeight) {
			_profitValueWeight = profitValueWeight; 
		};
		
		this.setPaddingTop=function(paddingTop){
			_paddingTop=paddingTop;
		};
		
		/**
		 * 设置profitValueColor
		 * @param profitValueColor
		 */
		this.setProfitValueColor = function(profitValueColor) {
			_profitValueColor = profitValueColor;
		};
		
		/**
		 * 设置buttonText
		 * @param buttonText
		 */
		this.setButtonText = function(buttonText) {
			_buttonText = buttonText;
		};
		
		/**
		 * 设置内容区域距左边界距离
		 * @param leftOffset
		 */
		this.setLeftOffset = function(leftOffset) {
			_leftOffset = leftOffset;
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
					_$infoarea.show();
				}else{
					_$infoarea.hide();
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
			_enable = enable;
		};
		
		/**
		 * 设置按钮变灰
		 * @param enable
		 */
		this.setButtonGray = function(enable) {
			if(enable){
				_$button.css("background-color","#ff7878");
			}else{
				_$button.css("background-color","#ddd");
			}
		};
	};
	
	return _infoarea;
})();