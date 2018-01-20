/**
 * ��Ϣ�鹹������
 */
var InfoArea = (function(){
	
	function _infoarea(id) {
		
		/** ��Ϣ������,��Ϊlarge��middle��small��image����  */
		var _type = null;
		
		/** ��typeΪimageʱ��flag����Ϊ0��1��2���ֱ�Ϊ���С�С��Ĭ��Ϊ0 */
		var _flag = null;
		
		/** �����ı� */
		var _titleText = null;
		
		/** �����Ƽ����� */
		var _titleIntro = null;
		
		/** ����ƫ�ƾ��� */
		var _titleOffset = null;
		
		/** ������ɫ */
		var _titleColor = null;
		
		/** ���ͣ���Ʊ���߱����� */
		var _kind = null;
		
		/** �����ı� */
		var _profitText = null;
		/** �����ı���ɫ */
		var _profitTextColor = null;
		
		/** ��������  */
		var _profitValue = null;
		
		/** �������ݴ�С */
		var _profitValueSize = null;
		
		/** ����������ɫ */
		var _profitValueColor = null;
		
		/** ����������ɫ */
		var _profitValueWeight = null;
		
		/** profit������ľ��� */
		var _paddingTop="24";
		
		/** ��ť�ı� */
		var _buttonText = null;
		
		/** �����������߽���� */
		var _leftOffset = null;
		
		/** ����¼� */
		var _eventClick = null;
		
		/** �������� */
		var _attachData = null;
		//end for parameter
		
		/** ��Ϣ����� */
		var _$infoarea = jQuery("#"+id);
		
		/** ������� */
		var _$title = _$infoarea.find(".ebdp-pc4promote-infoarea-title");
		
		/** �����ı����� */
		var _$titleText = _$title.find(".ebdp-pc4promote-infoarea-title-text");
		
		/** �����Ƽ����� */
		var _$titleIntro = _$title.find(".ebdp-pc4promote-infoarea-title-introduce"); 
		
		/** ���ݶ��� */
		var _$content = _$infoarea.find(".ebdp-pc4promote-infoarea-content");
		
		/** ���Ͷ��� */
		var _$kind = _$content.find(".ebdp-pc4promote-infoarea-kind-wrapper");
		
		/** ������� */
		var _$profit = _$content.find(".ebdp-pc4promote-infoarea-profit"); 
		
		/** �����ı����� */
		var _$profitText = _$profit.find(".ebdp-pc4promote-infoarea-profit-text");
		
		/** ����ֵ���� */
		var _$profitValue = _$profit.find(".ebdp-pc4promote-infoarea-profit-value");
		
		/** ��ť���� */
		var _$button = _$content.find(".ebdp-pc4promote-infoarea-button");
		
		/** ��Ϣ������ul���� */
		var _$ul = _$infoarea.parent("ul");
		
		/** ��Ϣ������wrapper���� */
		var _$wrapper = _$ul.parent("div");
		
		var _self=this;
		
		var _enable = true;
		
		/**
		 * ����¼�
		 */
		function _unbindEvent() {
			_$button.unbind("mouseover").unbind("mouseout");
			_$infoarea.unbind("click");
			
			if(_type=='small') {
				_$titleText.unbind("mouseover").unbind("mouseout");
			}
		}
		
		 /**
	     * �ı����ȼ��Ԫ��
	     * �ı��Ƿ񳬳�����ʡ�Ժŵ��жϷ�����ͨ������һ����ͬ�ı���Ԫ�أ���ȥ��ellipsis���ܣ�������Ԫ�صĳ������ж�
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
		 * ���¼�
		 */
		function _bindEvent() {
			_unbindEvent();
			
			/** ����¼��� */
			_$infoarea.bind("click", function(){
				if(_eventClick) {
					_eventClick(_attachData);
				}
			});
			
			/** ���mouseover�¼� */
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
		 * �ж��Ƿ���Ҫҳ�������֮����ִ��show
		 * @return boolean
		 */
		function _isAfterLoad() {
			return Util.prototype.isIE() && (parseInt(jQuery.browser.version,10)<8||Util.prototype.isQuirkMode());
		}
		
		/**
		 * �ж��Ƿ���ie��quirkģʽ
		 * @return boolean
		 */
		function _isQuirk() {
			return Util.prototype.isIE() && Util.prototype.isQuirkMode();
		}
		
		/**
		 * �ж�IE6�����
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
		 * ִ��show������
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
				_$profitValue.css("display","inline-block");//ie8�и߶�����
			}
			
			if(_profitText||_profitValue){//ie11�и߶ȵ�����
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
			
			/** ����content�Ŀ�� */
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
				
				/** ������ⳬ�����Ƽ�ͼ����ʾ */
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
						var contentObj=contentObj.clone().appendTo(jQuery("body")).css({"display":"absolute","top":"-1000px"});//��Ҫ��ʾ�����ڼ���
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
				ulObj.children("li").find(".ebdp-pc4promote-infoarea-button").css("top",top);//���ð�ťλ�ö���
				
			}
		};
		
		/**
		 * ��ǰ���չ�ֽ�����۴���
		 */
		this.show = function(){
			if(_isAfterLoad()) {
				jQuery(function(){
					_executeShowBody();
					//ie8����table-cell�����ã���̬����һ�¸߶�
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
		 * ����profitValue��css����
		 * @param cssName,���ֻ��һ����������ôcssNameӦ����һ��json����
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
		 * ��������
		 * @param type
		 */
		this.setType = function(type) {
			_type = type; 
		};
		
		/**
		 * ����flag
		 * @param flag
		 */
		this.setFlag = function(flag) {
			_flag = flag;
		};
		
		/**
		 * ����titleText
		 * @param titleText
		 */
		this.setTitleText = function(titleText) {
			_titleText = titleText;  
		};
		
		/**
		 * ����titleIntro
		 * @param titleIntro
		 */
		this.setTitleIntro = function(titleIntro) {
			_titleIntro = titleIntro;
		};
		
		/**
		 * ����titleOffset
		 * @param titleOffset
		 */
		this.setTitleOffset = function(titleOffset) {
			_titleOffset = titleOffset;  
		};
		
		/**
		 * ����titleColor
		 * @param titleColor
		 */
		this.setTitleColor = function(titleColor) {
			_titleColor = titleColor;
		};
		
		/**
		 * ����kind
		 * @param kind
		 */
		this.setKind = function(kind) {
			_kind = kind;
		};
		
		/**
		 * ����profitText
		 * @param profitText
		 */
		this.setProfitText = function(profitText) {
			_profitText = profitText;
		};
		
		this.setProfitTextColor = function(profitTextColor) {
			_profitTextColor = profitTextColor;
		};
		
		/**
		 * ����profitValue
		 * @param profitValue
		 */
		this.setProfitValue = function(profitValue) {
			_profitValue = profitValue; 
		};
		
		/**
		 * ����profitValueSize
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
		 * ����profitValueColor
		 * @param profitValueColor
		 */
		this.setProfitValueColor = function(profitValueColor) {
			_profitValueColor = profitValueColor;
		};
		
		/**
		 * ����buttonText
		 * @param buttonText
		 */
		this.setButtonText = function(buttonText) {
			_buttonText = buttonText;
		};
		
		/**
		 * ���������������߽����
		 * @param leftOffset
		 */
		this.setLeftOffset = function(leftOffset) {
			_leftOffset = leftOffset;
		};
		
		/**
		 * ����clickʱ�����Ļص�����
		 * @param eventClick
		 */
		this.setEventClickHandler = function(eventClick) {
			_eventClick = eventClick;
		};
		
		/**
		 * �����¼���������
		 * @param attachData
		 */
		this.setAttachData = function(attachData) {
			_attachData = attachData;
		};
		
		/**
		 * �����Ƿ�ɼ�
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
		 * �����Ƿ����
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
		 * ���ð�ť���
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