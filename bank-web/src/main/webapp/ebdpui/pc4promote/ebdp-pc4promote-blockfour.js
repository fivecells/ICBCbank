/**
 * 信息块构件中四个文本对象
 */
var BlockFour = (function(){
	
	function _blockfour(id) {
		
		
	    var that = this;
	    
		/**
		 * 解除事件
		 */
		function _unbindEvent() {}
		
		/**
		 * 绑定事件
		 */
		function _bindEvent() {}
		
		/**
		 * 判断是否需要页面加载完之后再执行show
		 * @return boolean
		 */
		function _isAfterLoad() {
			return Util.prototype.isIE() && (parseInt(jQuery.browser.version,10)<8||Util.prototype.isQuirkMode());
		}
		
		/**
		 * 执行show函数体
		 */
		function _executeShowBody() {
			
		}
		
		/**
		 * 当前组件展现进行外观处理
		 */
		this.show = function(){
			if(_isAfterLoad()) {
				jQuery(function(){
					_executeShowBody();
				});
			}else {
				_executeShowBody();
			}
		};
	};
	 
	return _blockfour;
})();