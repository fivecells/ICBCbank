/**
 * ��ͨ��ť��������
 */
var NormalButton = ( function() {

	function _normalButton(id) {

		/** ��� */
		var _width = null;

		/** �߶� */
		var _height = null;

		/** ˮƽ�ı����� */
		var _$wrapper = jQuery("#" + id);

		/**
		 * ��ť��� orange:��ɫ pink:��ɫ red:��ɫ gray:��ɫ 
		 */
		var _style = 'orange';//#ff7878,�޸�Ĭ�ϵ�orange����ɫ�����⿪�����޸�
		
		var _styleArray=['orange','pink','red','gray','yellow','lightpink'];

		/** ����ͼƬ */
		var _backImage = '';
		
		var _size='normal';

		/** ������������ */
		var _eventClick = null;
		/** ������ɫ�������� */
		var _attachData = {};

		var imgBlock = null;
		
		/**
		 * ��ǰ���չ�ֽ�����۴���
		 */
		this.show = function() {
			var _that = this;
			var minWidth=80;

			if (window._perbank_version_utb
					&& parseInt(window._perbank_version_utb, 10) == 3) {
				//�ȼ��Ϲ�����css��wrapper
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
					_$wrapper.addClass("ebdp-pc4promote-normalbutton-normal");//��normal
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
				//�ڻ���ģʽ��a��ǩ���׶�㲻��Ӧ����¼�
				imgBlock.bind("click.inner", function() {
					if(_eventClick){
					 _eventClick(_attachData);
					}
				});
			}
			

		};

		/**
		 * ���ð�ť���
		 * 
		 * @param style
		 * @return
		 */
		this.setStyle = function(style) {
			if(_style){
				//�ж�style�Ƿ����ֵ���
				if(jQuery.inArray(style,_styleArray)==-1){
					_style='orange';
				}else{
					_style = style;
				}		   
			}
		};
		/**
		 * ���ñ���ͼƬ
		 * 
		 * @param backImage
		 * @return
		 */
		this.setBackImage = function(backImage) {
			_backImage = backImage;
		};

		/**
		 * ���õ���ص��¼�
		 * 
		 * @param width
		 * @return
		 */
		this.setEventClickHandler = function(eventClick) {
			_eventClick = eventClick;
		};
		
		/**
		 * ��ȡ��ǰ���jQuery����
		 * @return {Object}
		 */
		this.getJDom = function() {
			return _$wrapper;
		};

		/**
		 * ���ûص��¼��Զ������
		 * 
		 * @param width
		 * @return
		 */
		this.setAttachData = function(attachData) {
			_attachData = attachData;
		};
		
		/**
		 * ���ð�ť��size
		 * @param width
		 * @return 
		 */
		this.setSize = function(size) {
			if(_size){
			   _size = size;
			}
		};

		/**
		 * �����Ƿ�ɼ�
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
		 * �����Ƿ����
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
		 * ����һ��normalbutton
		 * @param ��������Ҫ�Ĳ�����ɵ�json��
		 * @return
		 */
		this.create=function(paramJson){
		//��һЩ������������
			
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