/**
 * ��Ϣ�鹹������
 */
var InfoBlock = (function(){
	
	function _infoblock(id) {
		
		/** ��� */
		var _width = null;
		
		/** �߶� */
		var _height = null;
		
		/** ���� */
		var _type = null;
		
		/** ������Ϊimage��noborderʱ��flag��Ϊ���� */
		var _flag = null;
		
		/** ���Ͻ�ͼƬ */
		var _topRightImg = null;
		
		/** ��߿���� */
		var _leftTitle = null;
		
		/** ��߿����� */
		var _leftContent = null;
		
		/** ��߿��������� */
		var _leftContentType = null;
		
		/** �ұ߿���� */
		var _rightTitle = null;
		
		/** ����¼� */
		var _eventClick = null;
		
		/** �¼��������� */
		var _attachData = null;
		
		//end for parameter
		
		/** ��Ϣ����� */
		var _$infoblock = jQuery("#"+id);
		
		/** ��߱������ */
		var _$leftTitle = _$infoblock.find(".ebdp-pc4promote-infoblock-left-title p");
		
		/** ������ݶ��� */
		var _$leftContent = _$infoblock.find("dt b");
		
		/** �ұ߱������ */
		var _$rightTitle = _$infoblock.find("dd p:first"); 
		
		/** ��Ϣ������ul���� */
		var _$ul = _$infoblock.parent("ul");
		
		/** ��Ϣ������wrapper���� */
		var _$wrapper = _$ul.parent("div");
		
		/** typeΪimage��flagΪ1ʱ��ͼƬ���� */
		var _$images = null;
		/** typeΪimage��flagΪ2ʱ�����Ͻ�ͼƬ���� */
		var _$topRightImg = null;
		var increaseW = 10, $imgW, $imgH, increaseH;
		
	    var that = this;
	    
		/**
		 * ����¼�
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
		 * ���¼�
		 */
		function _bindEvent() {
			_unbindEvent();
			
			/** ����¼��� */
			_$infoblock.bind("click", function(){
				if(_eventClick) {
					_eventClick(_attachData);
				}
			});
			
			/** ���mouseover�¼� */
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
		
		/**
		 * ִ��show������
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
		 * ��ǰ���չ�ֽ�����۴���
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
		 * ���ÿ��
		 * @param width
		 */
		this.setWidth = function(width) {
			_width = width;
		};
		
		/**
		 * ���ø߶�
		 * @param height
		 */
		this.setHeight = function(height) {
			_height = height;
		};
		
		/**
		 * ��������
		 * @param type
		 */
		this.setType = function(type) {
			_type = type; 
		};
		
		/**
		 * ��������image��noborder�µ�����
		 * @param flag
		 */
		this.setFlag = function(flag) {
			_flag = flag;  
		};
		
		/**
		 * �������Ͻ�ͼƬ
		 * @param topRightImg
		 */
		this.setTopRightImg = function(topRightImg) {
			_topRightImg = topRightImg;
		};
		
		/**
		 * ������߿����
		 * @param leftTitle
		 */
		this.setLeftTitle = function(leftTitle) {
			_leftTitle = leftTitle;
		};
		
		/**
		 * ������߿�����
		 * @param leftContent
		 */
		this.setLeftContent = function(leftContent) {
			_leftContent = leftContent;
		};
		
		/**
		 * ������߿���������
		 * @param leftContentType
		 */
		this.setLeftContentType = function(leftContentType) {
			_leftContentType = leftContentType; 
		};
		
		/**
		 * �����ұ߿����
		 * @param rightTitle
		 */
		this.setRightTitle = function(rightTitle) {
			_rightTitle = rightTitle;
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
					_$infoblock.show();
				}else{
					_$infoblock.hide();
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
		};
		
		
		/**
		 * ��leftContentTypeΪ1ʱ�����Զ�̬�ı�ͼƬ��ʾ����
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