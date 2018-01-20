var ShortcutTool=(function(){
	function _shortcuttool(id){
		BaseUI.call(this,id);
		this.shortcuttool = typeof id == 'object' ? id : document.getElementById(id);
		var _$shortcuttool= jQuery(this.shortcuttool);
		var _$li=jQuery("ul>li",_$shortcuttool);
		var _$image=jQuery("ul>li>a",_$shortcuttool);
		//定义变量
		var _visible=null;
		var _enable=null;
		var _eventClick=null;
		var _eventMouseEnter=null;
		var _eventMouseLeave=null;
		
		var _self=this;
		
		this.setVisible=function(visible){
			if(typeof visible=='string'){
				visible=visible.split("|");
				_visible=[];
				for(var i=0;i<_$li.length;i++){
					if(visible[i]=='false'){
						_visible.push(false);
					}else{
						_visible.push(true);
					}
				}
			}
			_$li.each(function(i){
				_setVisibleByObj(jQuery(this),_visible[i]);
			});	
			
		};
		this.setVisibleByValue=function(value,visible){
			var $obj=_$li.filter("[data-value='"+value+"']");
			_setVisibleByObj($obj,visible);
			
		};
		
		this.setTipByValue=function(value,tip){
			var $obj=_$li.filter("[data-value='"+value+"']");
			_$image.eq($obj.index()).children().text(tip);
		};
		
		this.setAlertContent=function(value,id){
			var $obj=_$li.filter("[data-value='"+value+"']");
			$obj.append(jQuery("#"+id));
		};
		
		var _setVisibleByObj=function($obj,visible){
			if(visible){
				$obj.show();
			}else{
				$obj.hide();
			}
		};
		this.setEnable=function(enable){
			_enable=enable;	
		};
		
		this.setEventClickHandler = function(eventClick) {
			_eventClick = eventClick;
		};
		this.setEventMouseEnterHandler = function(eventMouseEnter) {
			_eventMouseEnter = eventMouseEnter;
		};
		this.setEventMouseLeaveHandler = function(eventMouseLeave) {
			_eventMouseLeave = eventMouseLeave;
		};
		
		var _bindEvent=function(){
			_unbindEvent();
			
			_$shortcuttool.find("li").hover(
					  function () {
						  var index=jQuery(this).index();
							var value=jQuery(this).attr("data-value");
							if(_eventMouseEnter){
								_eventMouseEnter(value,index);
							}
					  },
					  function () {
						  var index=jQuery(this).index();
							var value=jQuery(this).attr("data-value");
							if(_eventMouseLeave){
								_eventMouseLeave(value,index);
							}
					  }
					);
			
			_$shortcuttool.delegate("ul>li","click",function(event){
				var index=jQuery(this).index();
				var value=jQuery(this).attr("data-value");
				if(_eventClick){
					_eventClick(value,index);
				}	
				event.stopPropagation();
			});
			
		};
		
		
		var _unbindEvent=function(){
			_$shortcuttool.undelegate("ul>li","click");
		};
		this.show=function(){
			_bindEvent();
		};

	};
	_shortcuttool.prototype = new BaseUI();
	_shortcuttool.prototype.constructor = _shortcuttool;
	return _shortcuttool;
})();