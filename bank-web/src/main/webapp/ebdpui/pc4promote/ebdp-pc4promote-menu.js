/**
 * 菜单构件对象
 */
var Menu = (function() {

	function _menu(id) {
		/** 菜单类型 */
		var _type = null;

		/** 菜单json数据 */
		var _menuData = null;

		/** 构件总宽度 */
		var _wrapperWidth = null;

		/** 默认一级选项 */
		var _defaultItem1 = null;

		/** 默认二级选项 */
		var _defaultItem2 = null;

		/** 一级标签每个标签的宽度，支持百分比 */
		var _width = null;

		/** 二级标签宽度 */
		var _level2Width = null;

		/** 一级标签间padding */
		var _level1_padding = null;

		/** 二级标签间padding */
		var _level2_padding = null;

		/** 菜单点击事件 */
		var _eventClick = null;

		/** 事件附加数据 */
		var _attachData = null;

		/** 自适应，1为是 */
		var _autoSize = null;

		/** 标签文字是否靠左显示，只针对type为10，为1时靠左 */
		var _leftFlag = null;
		
		/** 单行最多显示数目，只针对type为12 */
		var _maxItemNum = 5;

		/** 设置type=4的底边颜色 1：红色   0：灰色，默认值：1 */
		var _borderType4 = 1;
		
		var _autoSizeForLevel1 = '0';
		var _autoSizeForLevel2 = '0';

		// end for parameter

		/** 菜单对象 */
		var _$menu = jQuery("#" + id);

		/** 一级菜单block对象 */
		var _$block = _$menu.find(".ebdp-pc4promote-menu-level1-block");

		/** 一级菜单nextButton */
		var _$nextButtonForLevel1 = _$menu
				.find(".ebdp-pc4promote-menu-level1-next-btn");

		/** 一级菜单prevButton */
		var _$prevButtonForLevel1 = _$menu
				.find(".ebdp-pc4promote-menu-level1-prev-btn");

		/** 一级菜单包裹对象 */
		var _$level1 = _$menu.find(".ebdp-pc4promote-menu-level1-wrapper");

		/** 一级菜单Ul对象 */
		var _$ulForLevel1 = null;

		/** 二级block对象 */
		var _$block2 = _$menu.find(".ebdp-pc4promote-menu-level2-block");

		/** 二级菜单包裹对象 */
		var _$level2 = _$menu.find(".ebdp-pc4promote-menu-level2-wrapper");

		/** 是否有二级菜单 */
		var _hasLevel2 = false;

		/** 一级菜单当前开始可见索引 */
		var _currentIndexForLevel1 = 0;

		/** 二级菜单nextButton */
		var _$nextButtonForLevel2 = _$menu
				.find(".ebdp-pc4promote-menu-level2-next-btn");

		/** 二级菜单prevButton */
		var _$prevButtonForLevel2 = _$menu
				.find(".ebdp-pc4promote-menu-level2-prev-btn");

		/** 二级菜单Ul对象 */
		var _$ulForLevel2 = null;

		/** 二级菜单当前开始可见索引 */
		var _currentIndexForLevel2 = 0;

		var that = this;

		/** 一级标签宽度，目前默认为150 */
		var _level1Width = 150;

		/**
		 * 判断一个对象是否是json
		 * 
		 * @param obj
		 * @returns {Boolean}
		 */
		function _isJson(obj) {
			var ret = typeof (obj) == "object"
					&& Object.prototype.toString.call(obj).toLowerCase() == "[object object]"
					&& !obj.length;
			return ret;
		}

		/**
		 * 判断一个对象是否是array
		 */
		function _isArray(obj) {
			return jQuery.isArray(obj);
		}

		/**
		 * 获取json中元素个数
		 * 
		 * @param obj
		 */
		function _getJsonNum(obj) {
			var num = 0;
			for (n in obj) {
				num++;
			}
			return num;
		}

		/**
		 * 创建一级菜单项,type为12时，menuData为json数据格式
		 * 
		 * @param menuData
		 * @returns {String}
		 */

		function _createItems_type12(menuData) {
			var menuDataLength = _getJsonNum(menuData);
			var temp_maxItemNum = Number(_maxItemNum) + 1;
			_maxItemNum = Number(_maxItemNum);
			var moreItemWidth = _$menu.width() / temp_maxItemNum;
			var menuStr = '';
			if (menuData) {
				if (_isJson(menuData) && !jQuery.isEmptyObject(menuData)) {
					var level1_count = _getJsonNum(menuData);
					var level1_index = 0;
					if (menuDataLength <= _maxItemNum) {
						jQuery
								.each(
										menuData,
										function(i, n) {
											level1_index++
											// if(level1_index == level1_count)
											// {
											if (typeof n == 'string') {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node ebdp-pc4promote-menu-level1-node-else" index="'/*
																																						 * -else
																																						 * class属性后缀是让type=12的事件绑定，提供便利，无字面含义，下同
																																						 */
														+ (level1_index - 1)
														+ '" data-url="'
														+ n
														+ '"><span id="ebdp-pc4promote-menu-level1-text-'
														+ level1_index
														+ '" class="ebdp-pc4promote-menu-level1-text ebdp-pc4promote-menu-level1-text-else">'/*
																																				 * -else
																																				 * class属性后缀是让type=12的事件绑定，提供便利，无字面含义
																																				 * ，下同
																																				 */
														+ i + '</span>';
											}
											menuStr += '</li>';
										});
					} else if (menuDataLength >= _maxItemNum) {
						jQuery
								.each(
										menuData,
										function(i, n) {
											level1_index++;
											if (level1_index <= _maxItemNum) {
												if (typeof n == 'string') {
													menuStr += '<li class="ebdp-pc4promote-menu-level1-node ebdp-pc4promote-menu-level1-node-else" index="'
															+ (level1_index - 1)
															+ '" data-url="'
															+ n
															+ '"><span id="ebdp-pc4promote-menu-level1-text-'
															+ level1_index
															+ '" class="ebdp-pc4promote-menu-level1-text ebdp-pc4promote-menu-level1-text-else">'
															+ i + '</span>';
												}
											} else if (level1_index > _maxItemNum
													&& level1_index <= menuDataLength) {
												if (typeof n == 'string') {
													menuStr += '<li class="ebdp-pc4promote-menu-level1-node-more-type12 ebdp-pc4promote-menu-level1-node-else" index="'
															+ (level1_index - 1)
															+ '" data-url="'
															+ n
															+ '"><span id="ebdp-pc4promote-menu-level1-text-'
															+ level1_index
															+ '" class="ebdp-pc4promote-menu-level1-text-more-type12 ebdp-pc4promote-menu-level1-text-else">'
															+ i + '</span>';
												}
											}
											menuStr += '</li>';
											if (level1_index === _maxItemNum) {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node ebdp-pc4promote-menu-level1-node-more-li" '

														+ '"><span id="ebdp-pc4promote-menu-level1-text'
														// + level1_index
														+ '" class="ebdp-pc4promote-menu-level1-text">'
														+ '更多'
														+ '</span><ul class="ebdp-pc4promote-menu-level1-node-more">';
											}
											if (level1_index === menuDataLength) {
												menuStr += '</ul></li>';
											}
										});
					}
				}
			}
			return menuStr;
		}

		/**
		 * 创建一级和二级菜单项,type为1时,menuData为json数据格式
		 * 
		 * @param menuData
		 * @returns {String}
		 */
		function _createItems_type1(menuData) {
			var menuStr = '';
			if (menuData) {
				if (_isJson(menuData) && !jQuery.isEmptyObject(menuData)) {
					var level1_count = _getJsonNum(menuData);
					var level1_index = 0;
					jQuery
							.each(
									menuData,
									function(i, n) {
										level1_index++;
										// if(level1_index == level1_count) {
										if (typeof n == 'string') {
											menuStr += '<li class="ebdp-pc4promote-menu-level1-node" index="'
													+ (level1_index - 1)
													+ '" data-url="'
													+ n
													+ '"><span id="ebdp-pc4promote-menu-level1-text-'
													+ level1_index
													+ '" class="ebdp-pc4promote-menu-level1-text">'
													+ i + '</span>';
										} else {
											menuStr += '<li class="ebdp-pc4promote-menu-level1-node" index="'
													+ (level1_index - 1)
													+ '"><span id="ebdp-pc4promote-menu-level1-text-'
													+ level1_index
													+ '" class="ebdp-pc4promote-menu-level1-text">'
													+ i + '</span>';
										}
										if (_isJson(n)
												&& !jQuery.isEmptyObject(n)) {
											_hasLevel2 = true;
											var level2_count = _getJsonNum(n);
											menuStr += '<ul class="ebdp-pc4promote-menu-level2" style="display:none">';
											var level2_index = 0;
											jQuery
													.each(
															n,
															function(ii, nn) {
																level2_index++;
																if (level2_index == level2_count) {
																	menuStr += '<li class="ebdp-pc4promote-menu-level2-node" index="'
																			+ (level2_index - 1)
																			+ '" data-url="'
																			+ nn
																			+ '"><span class="ebdp-pc4promote-menu-level2-text">'
																			+ ii
																			+ '</span></li>';
																} else {
																	menuStr += '<li class="ebdp-pc4promote-menu-level2-node" index="'
																			+ (level2_index - 1)
																			+ '" data-url="'
																			+ nn
																			+ '"><span class="ebdp-pc4promote-menu-level2-text">'
																			+ ii
																			+ '</span><b class="ebdp-pc4promote-menu-level2-split">|</b></li>';
																}
															});
											menuStr += '</ul>';
										}
										menuStr += '</li>';
									});
				}
			}
			return menuStr;
		}

		/**
		 * 创建一级和二级菜单项,type为1时，menuData为array格式
		 * 
		 * @param menuData
		 * @returns {String}
		 */

		function _createItems_type1WithArray(menuData) {
			var menuStr = '';
			if (menuData) {
				for (var p = 0; p < menuData.length; p++) {
					if (p == menuData.length - 1) {
						jQuery
								.each(
										menuData[p],
										function(i, n) {
											if (typeof n == 'string') {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node" index="'
														+ p
														+ '" data-url="'
														+ n
														+ '"><span id="ebdp-pc4promote-menu-level1-text-'
														+ p
														+ '" class="ebdp-pc4promote-menu-level1-text">'
														+ i + '</span>';
											} else {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node" index="'
														+ p
														+ '"><span id="ebdp-pc4promote-menu-level1-text-'
														+ p
														+ '" class="ebdp-pc4promote-menu-level1-text">'
														+ i + '</span>';
											}

											if (n && jQuery.isArray(n)) {
												_hasLevel2 = true;
												menuStr += '<ul class="ebdp-pc4promote-menu-level2" style="display:none">';
												for (var q = 0; q < n.length; q++) {
													if (q == n.length - 1) {
														jQuery
																.each(
																		n[q],
																		function(
																				ii,
																				nn) {
																			menuStr += '<li class="ebdp-pc4promote-menu-level2-node" index="'
																					+ q
																					+ '" data-url="'
																					+ nn
																					+ '"><span class="ebdp-pc4promote-menu-level2-text">'
																					+ ii
																					+ '</span></li>';
																		});
													} else {
														jQuery
																.each(
																		n[q],
																		function(
																				ii,
																				nn) {
																			menuStr += '<li class="ebdp-pc4promote-menu-level2-node" index="'
																					+ q
																					+ '" data-url="'
																					+ nn
																					+ '"><span class="ebdp-pc4promote-menu-level2-text">'
																					+ ii
																					+ '</span><b class="ebdp-pc4promote-menu-level2-split">|</b></li>';
																		});
													}
												}
												menuStr += '</ul>';
											}
										});
					} else {
						jQuery
								.each(
										menuData[p],
										function(i, n) {
											if (typeof n == 'string') {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node" index="'
														+ p
														+ '" data-url="'
														+ n
														+ '"><span id="ebdp-pc4promote-menu-level1-text-'
														+ p
														+ '" class="ebdp-pc4promote-menu-level1-text">'
														+ i + '</span>';
											} else {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node" index="'
														+ p
														+ '" ><span id="ebdp-pc4promote-menu-level1-text-'
														+ p
														+ '" class="ebdp-pc4promote-menu-level1-text">'
														+ i + '</span>';
											}

											if (n && jQuery.isArray(n)) {
												_hasLevel2 = true;
												menuStr += '<ul class="ebdp-pc4promote-menu-level2" style="display:none">';
												for (var q = 0; q < n.length; q++) {
													if (q == n.length - 1) {
														jQuery
																.each(
																		n[q],
																		function(
																				ii,
																				nn) {
																			menuStr += '<li class="ebdp-pc4promote-menu-level2-node" index="'
																					+ q
																					+ '" data-url="'
																					+ nn
																					+ '"><span class="ebdp-pc4promote-menu-level2-text">'
																					+ ii
																					+ '</span></li>';
																		});
													} else {
														jQuery
																.each(
																		n[q],
																		function(
																				ii,
																				nn) {
																			menuStr += '<li class="ebdp-pc4promote-menu-level2-node" index="'
																					+ q
																					+ '" data-url="'
																					+ nn
																					+ '"><span class="ebdp-pc4promote-menu-level2-text">'
																					+ ii
																					+ '</span><b class="ebdp-pc4promote-menu-level2-split">|</b></li>';
																		});
													}
												}
												menuStr += '</ul>';
											}
										});
					}
					menuStr += '</li>';
				}
			}
			return menuStr;
		}

		/**
		 * 创建一级菜单，type为4时,menuData为json格式
		 * 
		 * @param menuData
		 * @return {String}
		 */
		function _createItems_type4(menuData) {
			var menuStr = '';
			if (menuData) {
				//menuStr += '<ul class="ebdp-pc4promote-menu-level2-type4">';
				if(_borderType4=="0"){
					menuStr += '<ul class="ebdp-pc4promote-menu-level2-type4 ebdp-pc4promote-menu-level2-type4BoderGray">';
				}else{
					menuStr += '<ul class="ebdp-pc4promote-menu-level2-type4">';
				}
				//ebdp-pc4promote-menu-level2-type4BoderGray
				var level2_index = 0;
				jQuery
						.each(
								menuData,
								function(i, n) {
									level2_index++;
									menuStr += '<li class="ebdp-pc4promote-menu-level2-node-type4" index="'
											+ level2_index
											+ '" data-url="'
											+ n
											+ '"><span class="ebdp-pc4promote-menu-level2-text">'
											+ i + '</span></li>';
								});
				menuStr += '</ul>';
			}
			return menuStr;
		}

		/**
		 * 创建一级菜单，type为4时,menuData为array格式
		 * 
		 * @param menuData
		 * @return {String}
		 */
		function _createItems_type4WithArray(menuData) {
			var menuStr = '';
			if (menuData) {
				//menuStr += '<ul class="ebdp-pc4promote-menu-level2-type4">';
				if(_borderType4=="0"){
					menuStr += '<ul class="ebdp-pc4promote-menu-level2-type4 ebdp-pc4promote-menu-level2-type4BoderGray">';
				}else{
					menuStr += '<ul class="ebdp-pc4promote-menu-level2-type4">';
				}
				//ebdp-pc4promote-menu-level2-type4BoderGray
				for ( var p = 0; p < menuData.length; p++) {
					jQuery
							.each(
									menuData[p],
									function(i, n) {
										menuStr += '<li class="ebdp-pc4promote-menu-level2-node-type4" index="'
												+ p
												+ '" data-url="'
												+ n
												+ '"><span class="ebdp-pc4promote-menu-level2-text">'
												+ i + '</span></li>';
									});
				}
				menuStr += '</ul>';
			}
			return menuStr;
		}

		/**
		 * 创建一级菜单，type为9时,menuData为array格式
		 * 
		 * @param menuData
		 * @return {String}
		 */
		function _createItems_type9WithArray(menuData) {
			var menuStr = '';
			if (menuData) {
				menuStr += '<ul class="ebdp-pc4promote-menu-level2-type9">';
				for (var q = 0; q < menuData.length; q++) {
					if (q == menuData.length - 1) {
						jQuery
								.each(
										menuData[q],
										function(ii, nn) {
											menuStr += '<li class="ebdp-pc4promote-menu-level2-node ebdp-pc4promote-menu-level2-node-type9" index="'
													+ q
													+ '" data-url="'
													+ nn
													+ '"><span class="ebdp-pc4promote-menu-level2-text">'
													+ ii + '</span></li>';
										});
					} else {
						jQuery
								.each(
										menuData[q],
										function(ii, nn) {
											menuStr += '<li class="ebdp-pc4promote-menu-level2-node ebdp-pc4promote-menu-level2-node-type9" index="'
													+ q
													+ '" data-url="'
													+ nn
													+ '"><span class="ebdp-pc4promote-menu-level2-text">'
													+ ii
													+ '</span><b class="ebdp-pc4promote-menu-level2-split">|</b></li>';
										});
					}
				}
				menuStr += '</ul>';
			}

			return menuStr;
		}

		/**
		 * 创建一级和二级菜单，type为5时，menuData为json格式
		 * 
		 * @param menuData
		 * @returns {String}
		 */
		function _createItems_type5(menuData) {
			var menuStr = '';
			if (menuData) {
				if (_isJson(menuData) && !jQuery.isEmptyObject(menuData)) {
					var level1_count = _getJsonNum(menuData);
					var level1_index = 0;
					jQuery
							.each(
									menuData,
									function(i, n) {
										level1_index++;
										// if(level1_index == level1_count) {
										if (typeof n == 'string') {
											menuStr += '<li class="ebdp-pc4promote-menu-level1-node" data-url="'
													+ n
													+ '"><span id="ebdp-pc4promote-menu-level1-text-'
													+ level1_index
													+ '" class="ebdp-pc4promote-menu-level1-text">'
													+ i + '</span>';
										} else {
											menuStr += '<li class="ebdp-pc4promote-menu-level1-node"><span id="ebdp-pc4promote-menu-level1-text-'
													+ level1_index
													+ '" class="ebdp-pc4promote-menu-level1-text">'
													+ i + '</span>';
										}
										if (_isJson(n)
												&& !jQuery.isEmptyObject(n)) {
											_hasLevel2 = true;
											menuStr += '<ul class="ebdp-pc4promote-menu-level2-type5" style="display:none">';
											jQuery
													.each(
															n,
															function(ii, nn) {
																var content = ii
																		.split("|");
																var content_text = content[0];
																var content_img = content[1];
																if (content_img) {
																	menuStr += '<li class="ebdp-pc4promote-menu-level2-node-type5" data-url="'
																			+ nn
																			+ '"><img class="ebdp-pc4promote-menu-level2-image" src="'
																			+ content_img
																			+ '"><span class="ebdp-pc4promote-menu-level2-text-type5">'
																			+ content_text
																			+ '</span></li>';
																} else {
																	menuStr += '<li class="ebdp-pc4promote-menu-level2-node-type5" data-url="'
																			+ nn
																			+ '"><img class="ebdp-pc4promote-menu-level2-image" style="visibility:hidden;"><span class="ebdp-pc4promote-menu-level2-text-type5">'
																			+ content_text
																			+ '</span></li>';
																}

															});
											menuStr += '</ul>';
										}
										menuStr += '</li>';
									});
				}
			}
			return menuStr;
		}

		/**
		 * 创建一级和二级菜单,type为5时，menuData为Array格式
		 * 
		 * @param menuData
		 * @returns {String}
		 */
		function _createItems_type5WithArray(menuData) {
			var menuStr = '';
			if (menuData) {
				for (var p = 0; p < menuData.length; p++) {
					if (p == menuData.length - 1) {
						jQuery
								.each(
										menuData[p],
										function(i, n) {
											if (typeof n == 'string') {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node" data-url="'
														+ n
														+ '"><span class="ebdp-pc4promote-menu-level1-text">'
														+ i + '</span>';
											} else {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node"><span class="ebdp-pc4promote-menu-level1-text">'
														+ i + '</span>';
											}
											if (_isArray(n)) {
												menuStr += '<ul class="ebdp-pc4promote-menu-level2-type5" style="display:none">';
												_hasLevel2 = true;
												for (var q = 0; q < n.length; q++) {
													// if(q==n.length-1) {
													menuStr += '<li class="ebdp-pc4promote-menu-level2-node-type5" data-url="'
															+ n[q].value
															+ '"><img class="ebdp-pc4promote-menu-level2-image" src="'
															+ n[q].image
															+ '"/><span class="ebdp-pc4promote-menu-level2-text-type5">'
															+ n[q].key
															+ '</span></li>';
												}
												menuStr += '</ul>';
											}
										});
					} else {
						jQuery
								.each(
										menuData[p],
										function(i, n) {
											if (typeof n == 'string') {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node" data-url="'
														+ n
														+ '"><span class="ebdp-pc4promote-menu-level1-text">'
														+ i
														+ '</span><b class="ebdp-pc4promote-menu-level1-split">|</b>';
											} else {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node"><span class="ebdp-pc4promote-menu-level1-text">'
														+ i
														+ '</span><b class="ebdp-pc4promote-menu-level1-split">|</b>';
											}
											if (_isArray(n)) {
												menuStr += '<ul class="ebdp-pc4promote-menu-level2-type5" style="display:none">';
												_hasLevel2 = true;
												for (var q = 0; q < n.length; q++) {
													menuStr += '<li class="ebdp-pc4promote-menu-level2-node-type5" data-url="'
															+ n[q].value
															+ '"><img class="ebdp-pc4promote-menu-level2-image" src="'
															+ n[q].image
															+ '"/><span class="ebdp-pc4promote-menu-level2-text-type5">'
															+ n[q].key
															+ '</span></li>';
												}
												menuStr += '</ul>';
											}
										});
					}
					menuStr += '</li>';
				}
			}
			return menuStr;
		}

		/**
		 * 创建一级和二级菜单项,type为10时,menuData为json数据格式
		 * 
		 * @param menuData
		 * @returns {String}
		 */
		function _createItems_type10(menuData) {
			var menuStr = '';
			if (menuData) {
				if (_isJson(menuData) && !jQuery.isEmptyObject(menuData)) {
					var level1_count = _getJsonNum(menuData);
					var level1_index = 0;
					jQuery
							.each(
									menuData,
									function(i, n) {
										level1_index++;
										if (level1_index == level1_count) {
											if (typeof n == 'string') {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node ebdp-pc4promote-menu-level1-node-type10" index="'
														+ (level1_index - 1)
														+ '" data-url="'
														+ n
														+ '"><span id="ebdp-pc4promote-menu-level1-text-'
														+ level1_index
														+ '" class="ebdp-pc4promote-menu-level1-text ebdp-pc4promote-menu-level1-text-type10">'
														+ i + '</span>';
											} else {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node ebdp-pc4promote-menu-level1-node-type10" index="'
														+ (level1_index - 1)
														+ '"><span id="ebdp-pc4promote-menu-level1-text-'
														+ level1_index
														+ '" class="ebdp-pc4promote-menu-level1-text ebdp-pc4promote-menu-level1-text-type10">'
														+ i + '</span>';
											}
										} else {
											if (typeof n == 'string') {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node ebdp-pc4promote-menu-level1-node-type10" index="'
														+ (level1_index - 1)
														+ '" data-url="'
														+ n
														+ '"><span id="ebdp-pc4promote-menu-level1-text-'
														+ level1_index
														+ '" class="ebdp-pc4promote-menu-level1-text ebdp-pc4promote-menu-level1-text-type10">'
														+ i
														+ '</span><b class="ebdp-pc4promote-menu-level1-split">|</b>';
											} else {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node ebdp-pc4promote-menu-level1-node-type10" index="'
														+ (level1_index - 1)
														+ '"><span id="ebdp-pc4promote-menu-level1-text-'
														+ level1_index
														+ '" class="ebdp-pc4promote-menu-level1-text ebdp-pc4promote-menu-level1-text-type10">'
														+ i
														+ '</span><b class="ebdp-pc4promote-menu-level1-split">|</b>';
											}
										}
										if (_isJson(n)
												&& !jQuery.isEmptyObject(n)) {
											_hasLevel2 = true;
											var level2_count = _getJsonNum(n);
											menuStr += '<ul class="ebdp-pc4promote-menu-level2" style="display:none">';
											var level2_index = 0;
											jQuery
													.each(
															n,
															function(ii, nn) {
																level2_index++;
																menuStr += '<li class="ebdp-pc4promote-menu-level2-node ebdp-pc4promote-menu-level2-node-type10"  index="'
																		+ (level2_index - 1)
																		+ '" data-url="'
																		+ nn
																		+ '"><span class="ebdp-pc4promote-menu-level2-text">'
																		+ ii
																		+ '</span></li>';
															});
											menuStr += '</ul>';
										}
										menuStr += '</li>';
									});
				}
			}
			return menuStr;
		}

		/**
		 * 创建一级和二级菜单项,type为10时，menuData为array格式
		 * 
		 * @param menuData
		 * @returns {String}
		 */
		function _createItems_type10WithArray(menuData) {
			var menuStr = '';
			if (menuData) {
				for (var p = 0; p < menuData.length; p++) {
					if (p == menuData.length - 1) {
						jQuery
								.each(
										menuData[p],
										function(i, n) {
											if (typeof n == 'string') {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node ebdp-pc4promote-menu-level1-node-type10" index="'
														+ p
														+ '" data-url="'
														+ n
														+ '"><span id="ebdp-pc4promote-menu-level1-text-'
														+ p
														+ '" class="ebdp-pc4promote-menu-level1-text ebdp-pc4promote-menu-level1-text-type10">'
														+ i + '</span>';
											} else {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node ebdp-pc4promote-menu-level1-node-type10" index="'
														+ p
														+ '"><span id="ebdp-pc4promote-menu-level1-text-'
														+ p
														+ '" class="ebdp-pc4promote-menu-level1-text ebdp-pc4promote-menu-level1-text-type10">'
														+ i + '</span>';
											}

											if (n && jQuery.isArray(n)) {
												_hasLevel2 = true;
												menuStr += '<ul class="ebdp-pc4promote-menu-level2" style="display:none">';
												for (var q = 0; q < n.length; q++) {
													jQuery
															.each(
																	n[q],
																	function(
																			ii,
																			nn) {
																		menuStr += '<li class="ebdp-pc4promote-menu-level2-node ebdp-pc4promote-menu-level2-node-type10" index="'
																				+ q
																				+ '" data-url="'
																				+ nn
																				+ '"><span class="ebdp-pc4promote-menu-level2-text">'
																				+ ii
																				+ '</span></li>';
																	});
												}
												menuStr += '</ul>';
											}
										});
					} else {
						jQuery
								.each(
										menuData[p],
										function(i, n) {
											if (typeof n == 'string') {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node ebdp-pc4promote-menu-level1-node-type10" index="'
														+ p
														+ '" data-url="'
														+ n
														+ '"><span id="ebdp-pc4promote-menu-level1-text-'
														+ p
														+ '" class="ebdp-pc4promote-menu-level1-text ebdp-pc4promote-menu-level1-text-type10">'
														+ i
														+ '</span><b class="ebdp-pc4promote-menu-level1-split">|</b>';
											} else {
												menuStr += '<li class="ebdp-pc4promote-menu-level1-node ebdp-pc4promote-menu-level1-node-type10" index="'
														+ p
														+ '"><span id="ebdp-pc4promote-menu-level1-text-'
														+ p
														+ '" class="ebdp-pc4promote-menu-level1-text ebdp-pc4promote-menu-level1-text-type10">'
														+ i
														+ '</span><b class="ebdp-pc4promote-menu-level1-split">|</b>';
											}

											if (n && jQuery.isArray(n)) {
												_hasLevel2 = true;
												menuStr += '<ul class="ebdp-pc4promote-menu-level2" style="display:none">';
												for (var q = 0; q < n.length; q++) {
													jQuery
															.each(
																	n[q],
																	function(
																			ii,
																			nn) {
																		menuStr += '<li class="ebdp-pc4promote-menu-level2-node ebdp-pc4promote-menu-level2-node-type10" index="'
																				+ q
																				+ '" data-url="'
																				+ nn
																				+ '"><span class="ebdp-pc4promote-menu-level2-text">'
																				+ ii
																				+ '</span></li>';
																	});
												}
												menuStr += '</ul>';
											}
										});
					}
					menuStr += '</li>';
				}
			}
			return menuStr;
		}

		/**
		 * 创建菜单
		 */
		function _createMenu() {
			var menuStr = "";
			if (_type == '1' || _type == '2' || _type == '3' || _type == '6'
					|| _type == '7' || _type == '8' || _type == '11') {
				menuStr = '<ul class="ebdp-pc4promote-menu-level1">';
				if (_isJson(_menuData)) {
					menuStr += _createItems_type1(_menuData);
				} else if (_isArray(_menuData)) {
					menuStr += _createItems_type1WithArray(_menuData);
				} else {
					menuStr += '';
				}
				menuStr += '</ul>';
			} else if (_type == '4') {
				if (_isJson(_menuData)) {
					menuStr = _createItems_type4(_menuData);
				} else if (_isArray(_menuData)) {
					menuStr = _createItems_type4WithArray(_menuData);
				} else {
					menuStr += '';
				}
			} else if (_type == '5') {
				menuStr = '<a class="ebdp-pc4promote-menu-level1-next-btn"></a>';
				if (_isJson(_menuData)) {
					menuStr += _createItems_type5(_menuData);
				} else if (_isArray(_menuData)) {
					menuStr += _createItems_type5WithArray(_menuData);
				} else {
					menuStr += '';
				}
				menuStr += '</ul>';
			} else if (_type == '9') {
				if (_isArray(_menuData)) {
					menuStr = _createItems_type9WithArray(_menuData);
				} else {
					menuStr += '';
				}
			} else if (_type == '10') {
				menuStr = '<ul class="ebdp-pc4promote-menu-level1">';
				if (_isJson(_menuData)) {
					menuStr += _createItems_type10(_menuData);
				} else if (_isArray(_menuData)) {
					menuStr += _createItems_type10WithArray(_menuData);
				} else {
					menuStr += '';
				}
				menuStr += '</ul>';
			} else if (_type == '12') {
				menuStr = '<ul class="ebdp-pc4promote-menu-level1-type12">';
				if (_isJson(_menuData)) {
					menuStr += _createItems_type12(_menuData);
				} else if (_isArray(_menuData)) {
					menuStr += _createItems_type1WithArray(_menuData);
				} else {
					menuStr += '';
				}
				menuStr += '</ul>';
			}

			return menuStr;
		}

		/**
		 * 一级菜单选中时一级菜单的操作
		 * 
		 * @param obj
		 */
		function _level1Click_type3(obj, flag) {
			if (obj && obj.length > 0) {
				_$level1
						.find('li.ebdp-pc4promote-menu-level1-node')
						.removeClass(
								"ebdp-pc4promote-menu-level1-node-selected ebdp-pc4promote-menu-level1-node-selected-type3");
				obj.addClass("ebdp-pc4promote-menu-level1-node-selected-type3");

				_$level1
						.find('li.ebdp-pc4promote-menu-level1-node span')
						.removeClass(
								"ebdp-pc4promote-menu-level1-selected ebdp-pc4promote-menu-level1-selected-type3");
				_$level1.find('li.ebdp-pc4promote-menu-level1-node').attr(
						'isSelected', '0');
				obj
						.find("span.ebdp-pc4promote-menu-level1-text")
						.addClass(
								"ebdp-pc4promote-menu-level1-selected ebdp-pc4promote-menu-level1-selected-type3");
				obj.attr("isSelected", '1');

				// 默认选中第一个二级菜单
				if (flag && flag == '1') {
					_setDefaultLevel2Click();
				}
			}
		}

		/**
		 * 一级菜单选中时一级菜单的操作
		 * 
		 * @param obj
		 */
		function _level1Click_type12(obj, flag) {
			if (obj && obj.length > 0) {
				_$level1
						.find('li.ebdp-pc4promote-menu-level1-node-else')
						.removeClass(
								"ebdp-pc4promote-menu-level1-node-selected ebdp-pc4promote-menu-level1-node-selected-type3");
				obj.addClass("ebdp-pc4promote-menu-level1-node-selected-type3");

				_$level1
						.find('li.ebdp-pc4promote-menu-level1-node-else span')
						.removeClass(
								"ebdp-pc4promote-menu-level1-selected ebdp-pc4promote-menu-level1-selected-type3");
				_$level1.find('li.ebdp-pc4promote-menu-level1-node-else').attr(
						'isSelected', '0');
				obj
						.find("span.ebdp-pc4promote-menu-level1-text-else")
						.addClass(
								"ebdp-pc4promote-menu-level1-selected ebdp-pc4promote-menu-level1-selected-type3");
				obj.attr("isSelected", '1');

				// 默认选中第一个二级菜单
				if (flag && flag == '1') {
					_setDefaultLevel2Click();
				}
			}
		}

		/**
		 * 一级菜单选中时一级菜单的操作
		 * 
		 * @param obj
		 */
		function _level1Click_type8(obj, flag) {
			if (obj && obj.length > 0) {
				_$level1
						.find('li.ebdp-pc4promote-menu-level1-node')
						.removeClass(
								"ebdp-pc4promote-menu-level1-node-selected ebdp-pc4promote-menu-level1-node-selected-type8");
				obj.addClass("ebdp-pc4promote-menu-level1-node-selected-type8");

				_$level1
						.find('li.ebdp-pc4promote-menu-level1-node span')
						.removeClass(
								"ebdp-pc4promote-menu-level1-selected ebdp-pc4promote-menu-level1-selected-type8");
				_$level1.find('li.ebdp-pc4promote-menu-level1-node').attr(
						'isSelected', '0');
				obj
						.find("span.ebdp-pc4promote-menu-level1-text")
						.addClass(
								"ebdp-pc4promote-menu-level1-selected ebdp-pc4promote-menu-level1-selected-type8");
				obj.attr("isSelected", '1');

				// 默认选中第一个二级菜单
				if (flag && flag == '1') {
					_setDefaultLevel2Click();
				}
			}
		}

		/**
		 * 一级菜单选中时的操作
		 * 
		 * @param obj
		 */
		function _setLevel1Click_type12(obj, flag) {
			if (obj && obj.length > 0) {
			
					_$level1
							.find('li.ebdp-pc4promote-menu-level1-node-else')
							.removeClass(
									"ebdp-pc4promote-menu-level1-node-selected");
					_$level1
							.find('li.ebdp-pc4promote-menu-level1-node-else span')
							.removeClass("ebdp-pc4promote-menu-level1-selected");
				
				_$level1.find('li.ebdp-pc4promote-menu-level1-node-else').attr(
						'isSelected', '0');
				
					obj.addClass("ebdp-pc4promote-menu-level1-node-selected");
					obj.find("span.ebdp-pc4promote-menu-level1-text-else").addClass(
							"ebdp-pc4promote-menu-level1-selected");
				

				obj.attr("isSelected", '1');
				_$level2.empty().append(
						obj.find('ul').clone().css('display', 'block'));
				_$level2.show();
				if (obj.find('ul').size() == 0) {
					_$level2.hide();
				}
				// _$level1.find('b.ebdp-pc4promote-menu-level1-split').show();
				// obj.find('b.ebdp-pc4promote-menu-level1-split').hide();
				// obj.prev('li').find('b.ebdp-pc4promote-menu-level1-split').hide();

				// 默认选中第一个二级菜单
				if (flag && flag == '1') {
					_setDefaultLevel2Click();
				}
			}
		}
		
		/**
		 * 一级菜单选中时的操作
		 * 
		 * @param obj
		 */
		function _setLevel1Click(obj, flag) {
			if (obj && obj.length > 0) {
				if (_type == '6') {
					_$level1
							.find('li.ebdp-pc4promote-menu-level1-node')
							.removeClass(
									"ebdp-pc4promote-menu-level1-node-selected");
					_$level1
							.find('li.ebdp-pc4promote-menu-level1-node span')
							.removeClass(
									"ebdp-pc4promote-menu-level1-selected-type6");
				} else if (_type == '10') {
					_$level1
							.find('li.ebdp-pc4promote-menu-level1-node span')
							.removeClass(
									"ebdp-pc4promote-menu-level1-selected-type10");
					_$level1.find('li.ebdp-pc4promote-menu-level1-node').attr(
							'isSelected', '0');
				} else {
					_$level1
							.find('li.ebdp-pc4promote-menu-level1-node')
							.removeClass(
									"ebdp-pc4promote-menu-level1-node-selected");
					_$level1
							.find('li.ebdp-pc4promote-menu-level1-node span')
							.removeClass("ebdp-pc4promote-menu-level1-selected");
				}
				_$level1.find('li.ebdp-pc4promote-menu-level1-node').attr(
						'isSelected', '0');
				if (_type == '6') {
					obj.addClass("ebdp-pc4promote-menu-level1-node-selected");
					obj.find("span.ebdp-pc4promote-menu-level1-text").addClass(
							"ebdp-pc4promote-menu-level1-selected-type6");
				} else if (_type == '10') {
					obj.find("span.ebdp-pc4promote-menu-level1-text").addClass(
							"ebdp-pc4promote-menu-level1-selected-type10");
					obj.attr("isSelected", '1');
				} else {
					obj.addClass("ebdp-pc4promote-menu-level1-node-selected");
					obj.find("span.ebdp-pc4promote-menu-level1-text").addClass(
							"ebdp-pc4promote-menu-level1-selected");
				}

				obj.attr("isSelected", '1');
				_$level2.empty().append(
						obj.find('ul').clone().css('display', 'block'));
				_$level2.show();
				if (obj.find('ul').size() == 0) {
					_$level2.hide();
				}
				// _$level1.find('b.ebdp-pc4promote-menu-level1-split').show();
				// obj.find('b.ebdp-pc4promote-menu-level1-split').hide();
				// obj.prev('li').find('b.ebdp-pc4promote-menu-level1-split').hide();

				// 默认选中第一个二级菜单
				if (flag && flag == '1') {
					_setDefaultLevel2Click();
				}
			}
		}

		/**
		 * 默认选中二级菜单第一个菜单
		 */
		function _setDefaultLevel2Click() {
			var $secondObj = null;
			if (_type == '4') {
				$secondObj = _$level2.find(
						'li.ebdp-pc4promote-menu-level2-node-type4').eq(0);
			} else if (_type == '5') {
				$secondObj = _$level2.find(
						'li.ebdp-pc4promote-menu-level2-node-type5').eq(0);
			} else if (_type == '9') {
				$secondObj = _$level2.find(
						'li.ebdp-pc4promote-menu-level2-node-type9').eq(0);
			} else {
				$secondObj = _$level2.find(
						'li.ebdp-pc4promote-menu-level2-node').eq(0);
			}
			var text = "";
			_setLevel2Click($secondObj);
			if (_type == '1' || _type == '2' || _type == '3' || _type == '5'
					|| _type == '6' || _type == '7' || _type == '8'
					|| _type == '10' || _type == '11' || _type == '12') {
				text = _$level1.find(
						"span.ebdp-pc4promote-menu-level1-selected").text()
						+ "-" + $secondObj.find("span").text();
			} else if (_type == '4' || _type == '9') {
				text = $secondObj.text();
			}
			if ($secondObj.get(0) && $secondObj.attr('data-url')) {
				if (_eventClick) {
					_eventClick($secondObj.attr('data-url'), _attachData, text);
				}
			}
		}

		/**
		 * 二级菜单选中时的操作
		 * 
		 * @param obj
		 */
		function _setLevel2Click(obj) {
			_$prevButtonForLevel2.hide();
			_$nextButtonForLevel2.hide();
			if (obj && obj.length > 0) {
				if (_type == '1' || _type == '2' || _type == '3'
						|| _type == '6' || _type == '7' || _type == '8'
						|| _type == '10' || _type == '11' || _type == '12') {
					_$level2
							.removeClass('ebdp-pc4promote-menu-level2-node-selected');
					_$level2
							.find('li.ebdp-pc4promote-menu-level2-node span')
							.removeClass("ebdp-pc4promote-menu-level2-selected");
					_$level2.find('li.ebdp-pc4promote-menu-level2-node').attr(
							'isSelected', '0');
					obj.addClass('ebdp-pc4promote-menu-level2-node-selected');
					obj.find('span.ebdp-pc4promote-menu-level2-text').addClass(
							"ebdp-pc4promote-menu-level2-selected");
					obj.attr("isSelected", '1');

					var size2 = _$level2.find(
							"li.ebdp-pc4promote-menu-level2-node").size();
					if (size2 > 6) {
						_autoSize = "2";
						if (_autoSize == '1' || _autoSize == '2') {
							_$level2
									.find(
											"span.ebdp-pc4promote-menu-level2-text")
									.addClass(
											"ebdp-pc4promote-menu-text-padding");

							if (_level2Width) {
								_$level2
										.find(
												"span.ebdp-pc4promote-menu-level2-text")
										.width(parseInt(_level2Width, 10) - 4);
							}
							_$level2.removeClass("ebdp-pc4promote-menu-left")
									.width("100%");

							if (_autoSize == '2') {
								/** 如果一行显示不下，则出现左右滚动条 */
								if (_type == '1' || _type == '2'
										|| _type == '3' || _type == '6'
										|| _type == '10') {
									_adjustAutoScrollForLevel2();
								}
							}

						} else {
							if (_level2Width) {
								_$level2
										.find(
												"span.ebdp-pc4promote-menu-level2-text")
										.width(parseInt(_level2Width, 10) - 4);
							}

							_$level2.removeClass("ebdp-pc4promote-menu-left")
									.width("100%");

							/** 如果一行显示不下，则出现左右滚动条 */
							if (_type == '1' || _type == '2' || _type == '3'
									|| _type == '6' || _type == '10'
									|| _type == '11') {
								var wrapper2Width = parseInt(_$level2.width(),
										10);
								if (wrapper2Width < size2 * _level2Width) {
									if (_isIE6OrQuirk()) {
										_$level2
												.width(wrapper2Width - 80)
												.addClass(
														"ebdp-pc4promote-menu-left");
									} else {
										_$block2.css("padding", "0 40px");
									}
									_$ulForLevel2 = _$level2
											.find(".ebdp-pc4promote-menu-level2");
									_$ulForLevel2.width(size2 * _level2Width);
									_$nextButtonForLevel2.show();
									_$ulForLevel2
											.find(
													"li.ebdp-pc4promote-menu-level2-node")
											.eq(0).addClass(
													"level2-currentFirst");
									_currentIndexForLevel2 = 0;
								}
							}
						}
					} else {
						_adjust16Char(_$level2
								.find("span.ebdp-pc4promote-menu-level2-text"));
						_adjustAutoScrollForLevel2();
					}

				} else if (_type == '4') {
					_$level2
							.find('li.ebdp-pc4promote-menu-level2-node-type4')
							.removeClass(
									"ebdp-pc4promote-menu-level2-selected-type4");
					obj.addClass("ebdp-pc4promote-menu-level2-selected-type4");
				} else if (_type == '5') {
					_$level2
							.find('li.ebdp-pc4promote-menu-level2-node-type5')
							.removeClass(
									"ebdp-pc4promote-menu-level2-selected-type5");
					obj.addClass("ebdp-pc4promote-menu-level2-selected-type5");
				} else if (_type == '9') {
					_$level2
							.find(
									'li.ebdp-pc4promote-menu-level2-node-type9 span')
							.removeClass("ebdp-pc4promote-menu-level2-selected");
					_$level2.find('li.ebdp-pc4promote-menu-level2-node-type9')
							.attr('isSelected', '0');
					_$level2
							.find('li.ebdp-pc4promote-menu-level2-node-type9')
							.removeClass(
									"ebdp-pc4promote-menu-level2-selected-type9");
					obj.addClass("ebdp-pc4promote-menu-level2-selected-type9");
					obj.attr("isSelected", '1');
				}
			}
		}

		/**
		 * 解除事件
		 */
		function _unbindEvent() {
			_$level1.unbind('click.ebdp');
			_$level2.unbind('click.ebdp');

			_$level1.unbind("mouseover").unbind("mouseout");
		}

		/**
		 * 绑定事件
		 */
		/** 一级菜单type12更多按钮mouseover、mouseout事件绑定 */
		function _bindType12More() {
			jQuery(".ebdp-pc4promote-menu-level1-node-more-li")
					.hover(
							function() {
								jQuery(".ebdp-pc4promote-menu-level1-node-more")
										.slideDown(100);
							},
							function() {
								jQuery(".ebdp-pc4promote-menu-level1-node-more")
										.hide();
							})

		}
		function _bindEvent() {
			_unbindEvent();
			/** 一级菜单点击事件绑定 */
			_$level1.bind('click.ebdp', function(event) {
				var $thisObj = jQuery(event.target).closest(
						'li.ebdp-pc4promote-menu-level1-node');
				if (_type == '3' || _type == '7') {

					_level1Click_type3($thisObj, "1");
				} else if (_type == '8' || _type == '11') {
					_level1Click_type8($thisObj, "1");
				} else if (_type == '12') {
					$thisObj = jQuery(event.target).closest(
							'li.ebdp-pc4promote-menu-level1-node-else');
					_level1Click_type12($thisObj, "1");

				} else {
					_setLevel1Click($thisObj, "1");
				}
				if ($thisObj.get(0) && $thisObj.attr('data-url')) {
					if (_eventClick) {
						_eventClick($thisObj.attr('data-url'), _attachData,
								$thisObj.find("span:first").text());
					}
				}
			});

			/** 二级菜单点击事件绑定 */
			_$level2.bind("click.ebdp", function(event) {
				var $thisObj = null;
				if (_type == '4') {
					$thisObj = jQuery(event.target).closest(
							'li.ebdp-pc4promote-menu-level2-node-type4');
				} else if (_type == '5') {
					$thisObj = jQuery(event.target).closest(
							'li.ebdp-pc4promote-menu-level2-node-type5');
				} else if (_type == '9') {
					$thisObj = jQuery(event.target).closest(
							'li.ebdp-pc4promote-menu-level2-node-type9');
				} else {
					$thisObj = jQuery(event.target).closest(
							'li.ebdp-pc4promote-menu-level2-node');
				}
				var text = "";
				_setLevel2Click($thisObj);
				if (_type == '1' || _type == '2' || _type == '3'
						|| _type == '5' || _type == '6' || _type == '7'
						|| _type == '8' || _type == '10' || _type == '11') {
					text = _$level1.find(
							"span.ebdp-pc4promote-menu-level1-selected").text()
							+ "-" + $thisObj.find("span").text();
				} else if (_type == '4' || _type == '9') {
					text = $thisObj.text();
				}
				if ($thisObj.get(0) && $thisObj.attr('data-url')) {
					if (_eventClick) {
						_eventClick($thisObj.attr('data-url'), _attachData,
								text);
					}
				}
			});

			/** 一级菜单mouseover、mouseout事件绑定 */
			_$level1
					.mouseover(
							function(event) {
								var $thisObj = null;
								if (_type == '7') {
									$thisObj = jQuery(event.target)
											.closest(
													'li.ebdp-pc4promote-menu-level1-node');

									$thisObj
											.addClass("ebdp-pc4promote-menu-level1-node-selected-type3");
									$thisObj
											.find(
													"span.ebdp-pc4promote-menu-level1-text")
											.addClass(
													"ebdp-pc4promote-menu-level1-selected ebdp-pc4promote-menu-level1-selected-type3");

								} else if (_type == '8' || _type == '11') {
									$thisObj = jQuery(event.target)
											.closest(
													'li.ebdp-pc4promote-menu-level1-node');
									$thisObj
											.addClass("ebdp-pc4promote-menu-level1-node-selected-type8");
									$thisObj
											.find(
													"span.ebdp-pc4promote-menu-level1-text")
											.addClass(
													"ebdp-pc4promote-menu-level1-selected ebdp-pc4promote-menu-level1-selected-type8");
								} else if (_type == '12') {
									$thisObj = jQuery(event.target)
											.closest(
													'li.ebdp-pc4promote-menu-level1-node-else');

									$thisObj
											.addClass("ebdp-pc4promote-menu-level1-node-selected-type3");
									$thisObj
											.find(
													"span.ebdp-pc4promote-menu-level1-text-else")
											.addClass(
													"ebdp-pc4promote-menu-level1-selected ebdp-pc4promote-menu-level1-selected-type3");

								} else if (_type == '10') {
									$thisObj = jQuery(event.target)
											.closest(
													'li.ebdp-pc4promote-menu-level1-node');
									$thisObj
											.find(
													"span.ebdp-pc4promote-menu-level1-text")
											.addClass(
													"ebdp-pc4promote-menu-level1-selected-type10");
								} else {
									$thisObj = jQuery(event.target)
											.closest(
													'li.ebdp-pc4promote-menu-level1-node');
									$thisObj
											.addClass("ebdp-pc4promote-menu-level1-node-selected");
									if (_type == '6') {
										$thisObj
												.find(
														"span.ebdp-pc4promote-menu-level1-text")
												.addClass(
														"ebdp-pc4promote-menu-level1-selected-type6");
									} else {
										$thisObj
												.find(
														"span.ebdp-pc4promote-menu-level1-text")
												.addClass(
														"ebdp-pc4promote-menu-level1-selected");
									}
								}

							})
					.mouseout(
							function(event) {
								var $thisObj = null;
								if (_type == '7') {
									$thisObj = jQuery(event.target)
											.closest(
													'li.ebdp-pc4promote-menu-level1-node');

									if ($thisObj.attr('isSelected') != '1') {
										$thisObj
												.removeClass("ebdp-pc4promote-menu-level1-node-selected-type3");
										$thisObj
												.find(
														"span.ebdp-pc4promote-menu-level1-text")
												.removeClass(
														"ebdp-pc4promote-menu-level1-selected ebdp-pc4promote-menu-level1-selected-type3");
									}

								} else if (_type == '8' || _type == '11') {
									$thisObj = jQuery(event.target)
											.closest(
													'li.ebdp-pc4promote-menu-level1-node');
									if ($thisObj.attr('isSelected') != '1') {
										$thisObj
												.removeClass("ebdp-pc4promote-menu-level1-node-selected-type8");
										$thisObj
												.find(
														"span.ebdp-pc4promote-menu-level1-text")
												.removeClass(
														"ebdp-pc4promote-menu-level1-selected ebdp-pc4promote-menu-level1-selected-type8");
									}
								} else if (_type == '10') {
									$thisObj = jQuery(event.target)
											.closest(
													'li.ebdp-pc4promote-menu-level1-node');
									if ($thisObj.attr('isSelected') != '1') {
										$thisObj
												.find(
														"span.ebdp-pc4promote-menu-level1-text")
												.removeClass(
														"ebdp-pc4promote-menu-level1-selected-type10");
									}
								} else if (_type == '12') {
									$thisObj = jQuery(event.target)
											.closest(
													'li.ebdp-pc4promote-menu-level1-node-else');

									if ($thisObj.attr('isSelected') != '1') {
										$thisObj
												.removeClass("ebdp-pc4promote-menu-level1-node-selected-type3");
										$thisObj
												.find(
														"span.ebdp-pc4promote-menu-level1-text-else")
												.removeClass(
														"ebdp-pc4promote-menu-level1-selected ebdp-pc4promote-menu-level1-selected-type3");
									}

								} else {
									$thisObj = jQuery(event.target)
											.closest(
													'li.ebdp-pc4promote-menu-level1-node');
									if ($thisObj.attr('isSelected') != '1') {
										$thisObj
												.removeClass("ebdp-pc4promote-menu-level1-node-selected");
										if (_type == '6') {
											$thisObj
													.find(
															"span.ebdp-pc4promote-menu-level1-text")
													.removeClass(
															"ebdp-pc4promote-menu-level1-selected-type6");
										} else {
											$thisObj
													.find(
															"span.ebdp-pc4promote-menu-level1-text")
													.removeClass(
															"ebdp-pc4promote-menu-level1-selected");
										}
									}
								}
							});

			/** 二级菜单mouseover、mouseout事件绑定 */
			_$level2
					.mouseover(
							function(event) {
								var $thisObj = jQuery(event.target).closest(
										'li.ebdp-pc4promote-menu-level2-node');
								$thisObj
										.addClass("ebdp-pc4promote-menu-level2-node-selected");
								$thisObj
										.find(
												"span.ebdp-pc4promote-menu-level2-text")
										.addClass(
												"ebdp-pc4promote-menu-level2-selected");
							})
					.mouseout(
							function(event) {
								var $thisObj = jQuery(event.target).closest(
										'li.ebdp-pc4promote-menu-level2-node');
								if ($thisObj.attr('isSelected') != '1') {
									$thisObj
											.removeClass("ebdp-pc4promote-menu-level2-node-selected");
									$thisObj
											.find(
													"span.ebdp-pc4promote-menu-level2-text")
											.removeClass(
													"ebdp-pc4promote-menu-level2-selected");
								}
							});

			/** 一级菜单nextButton和prevButton点击事件绑定 */
			_$nextButtonForLevel1.bind("click", function() {
				_$ulForLevel1.animate({
					marginLeft : _getOffset('next')
				// left : _getOffset('next')
				}, '5000', 'linear',
						function() {
							_$ulForLevel1.find("li").removeClass(
									"level1-currentFirst");
							_$ulForLevel1.find(
									"li[index='" + _currentIndexForLevel1
											+ "']").addClass(
									"level1-currentFirst");
							_adjustBtn();
						});
			});

			_$prevButtonForLevel1.bind("click", function() {
				_$ulForLevel1.animate({
					marginLeft : _getOffset('prev')
				// left : _getOffset('prev')
				}, '5000', 'linear',
						function() {
							_$ulForLevel1.find("li").removeClass(
									"level1-currentFirst");
							_$ulForLevel1.find(
									"li[index='" + _currentIndexForLevel1
											+ "']").addClass(
									"level1-currentFirst");
							_adjustBtn();
						});
			});

			/** 二级菜单nextButton和prevButton点击事件绑定 */
			_$nextButtonForLevel2.bind("click", function() {
				_$ulForLevel2.animate({
					marginLeft : _getOffset2('next')
				}, '5000', 'linear',
						function() {
							_$ulForLevel2.find("li").removeClass(
									"level2-currentFirst");
							_$ulForLevel2.find(
									"li[index='" + _currentIndexForLevel2
											+ "']").addClass(
									"level2-currentFirst");
							_adjustBtn2();
						});
			});

			_$prevButtonForLevel2.bind("click", function() {
				_$ulForLevel2.animate({
					marginLeft : _getOffset2('prev')
				}, '5000', 'linear',
						function() {
							_$ulForLevel2.find("li").removeClass(
									"level2-currentFirst");
							_$ulForLevel2.find(
									"li[index='" + _currentIndexForLevel2
											+ "']").addClass(
									"level2-currentFirst");
							_adjustBtn2();
						});
			});

		}

		/**
		 * 获取一级菜单列表的移动偏移量
		 */
		function _getOffset(direction) {
			var totalSize = _$ulForLevel1.find(
					"li.ebdp-pc4promote-menu-level1-node").size();
			var pageSize = parseInt(_$level1.width() / _level1Width, 10);
			var thisIndex = parseInt(_$ulForLevel1.find(
					"li.level1-currentFirst").attr("index"), 10);

			if (direction == 'next') {
				if ((thisIndex + pageSize) < totalSize) {
					_currentIndexForLevel1 = thisIndex + pageSize;
				}
			}

			if (direction == 'prev') {
				if (thisIndex > 0) {
					if (thisIndex - pageSize > 0) {
						_currentIndexForLevel1 = thisIndex - pageSize;
					} else {
						_currentIndexForLevel1 = 0;
					}
				}
			}

			return -_level1Width * _currentIndexForLevel1;
		}

		/**
		 * 获取二级菜单列表的移动偏移量
		 */
		function _getOffset2(direction) {
			var ret = 0;

			var totalSize = _$ulForLevel2.find(
					"li.ebdp-pc4promote-menu-level2-node").size();
			var pageSize = parseInt(_$level2.width() / _level2Width, 10);
			var thisIndex = parseInt(_$ulForLevel2.find(
					"li.level2-currentFirst").attr("index"), 10);

			if (_type == 4) {
				totalSize = _$ulForLevel2.find(
						"li.ebdp-pc4promote-menu-level2-node-type4").size();
				pageSize = parseInt(_$level2.width() / 160, 10);
			}

			if (direction == 'next') {
				if ((thisIndex + pageSize) < totalSize) {
					_currentIndexForLevel2 = thisIndex + pageSize;
				}
			}

			if (direction == 'prev') {
				if (thisIndex > 0) {
					if (thisIndex - pageSize > 0) {
						_currentIndexForLevel2 = thisIndex - pageSize;
					} else {
						_currentIndexForLevel2 = 0;
					}
				}
			}

			ret = -_level2Width * _currentIndexForLevel2;
			if (_type == 4) {
				ret = -160 * _currentIndexForLevel2;
			}
			return ret;
		}

		/**
		 * 调整前后翻页按钮是否存在
		 */
		function _adjustBtn() {
			var totalSize = _$ulForLevel1.find(
					"li.ebdp-pc4promote-menu-level1-node").size();
			var pageSize = parseInt(_$level1.width() / _level1Width, 10);
			var thisIndex = parseInt(_$ulForLevel1.find(
					"li.level1-currentFirst").attr("index"), 10);

			if (thisIndex == 0) {
				_$prevButtonForLevel1.hide();
			} else {
				_$prevButtonForLevel1.show();
			}

			if ((thisIndex + pageSize) < totalSize) {
				_$nextButtonForLevel1.show();
			} else {
				_$nextButtonForLevel1.hide();
			}
		}

		/**
		 * 调整前后翻页按钮是否存在
		 */
		function _adjustBtn2() {
			var totalSize = _$ulForLevel2.find(
					"li.ebdp-pc4promote-menu-level2-node").size();
			var pageSize = parseInt(_$level2.width() / _level2Width, 10);
			var thisIndex = parseInt(_$ulForLevel2.find(
					"li.level2-currentFirst").attr("index"), 10);

			if (_type == 4) {
				totalSize = _$ulForLevel2.find(
						"li.ebdp-pc4promote-menu-level2-node-type4").size();
				pageSize = parseInt(_$level2.width() / 160, 10);
			}

			if (thisIndex == 0) {
				_$prevButtonForLevel2.hide();
			} else {
				_$prevButtonForLevel2.show();
			}

			if ((thisIndex + pageSize) < totalSize) {
				_$nextButtonForLevel2.show();
			} else {
				_$nextButtonForLevel2.hide();
			}
		}

		/**
		 * 默认打开时滚动到二级菜单当前索引显示
		 */
		function _scrollToVisibleForLevel2(index) {
			var totalSize = 0;
			var pageSize = 0;

			if (_type == 4) {
				totalSize = _$ulForLevel2.find(
						"li.ebdp-pc4promote-menu-level2-node-type4").size();
				pageSize = parseInt(_$level2.width() / 160, 10);
			} else {
				totalSize = _$ulForLevel2.find(
						"li.ebdp-pc4promote-menu-level2-node").size();
				pageSize = parseInt(_$level2.width() / _level2Width, 10);
			}

			var offset = 0;
			var pageNum = 5;
			var theIndex = 0;

			if (_currentIndexForLevel2 > index) {
				pageNum = parseInt((_currentIndexForLevel2 - index) / pageSize,
						10);
				theIndex = _currentIndexForLevel2 - pageNum * pageSize;
				offset = -_level2Width * theIndex;
			} else if (_currentIndexForLevel2 < index) {
				pageNum = parseInt((index - _currentIndexForLevel2) / pageSize,
						10);
				theIndex = _currentIndexForLevel2 + pageNum * pageSize;
				offset = -_level2Width * theIndex;
			}

			_$ulForLevel2.css("marginLeft", offset);
			_currentIndexForLevel2 = theIndex;
			_$ulForLevel2.find("li").removeClass("level2-currentFirst");
			_$ulForLevel2.find("li[index='" + _currentIndexForLevel2 + "']")
					.addClass("level2-currentFirst");
			_adjustBtn2();
		}

		/**
		 * 默认打开时滚动到一级菜单当前索引显示
		 */
		function _scrollToVisibleForLevel1(index) {
			var totalSize = _$ulForLevel1.find(
					"li.ebdp-pc4promote-menu-level1-node").size();
			var pageSize = parseInt(_$level1.width() / _level1Width, 10);

			var offset = 0;
			var pageNum = 5;
			var theIndex = 0;

			if (_currentIndexForLevel1 > index) {
				pageNum = parseInt((_currentIndexForLevel1 - index) / pageSize,
						10);
				theIndex = _currentIndexForLevel1 - pageNum * pageSize;
				offset = -_level1Width * theIndex;
			} else if (_currentIndexForLevel1 < index) {
				pageNum = parseInt((index - _currentIndexForLevel1) / pageSize,
						10);
				theIndex = _currentIndexForLevel1 + pageNum * pageSize;
				offset = -_level1Width * theIndex;
			}

			_$ulForLevel1.css("marginLeft", offset);
			_currentIndexForLevel1 = theIndex;
			_$ulForLevel1.find("li").removeClass("level1-currentFirst");
			_$ulForLevel1.find("li[index='" + _currentIndexForLevel1 + "']")
					.addClass("level1-currentFirst");
			_adjustBtn();
		}

		/**
		 * 设置选中项-一级菜单，当type为5时
		 * 
		 * @param param
		 *            为Number时是第几项，为String时是显示文件所在项
		 */
		function _setSelectedItem_type5(param1, param2) {
			var $items = _$level1.find("li.ebdp-pc4promote-menu-level1-node");
			$items.removeClass("ebdp-pc4promote-menu-level1-selected");
			var index = 0;
			if (typeof param1 == 'number') {
				index = param1;
			} else if (typeof param1 == 'string') {
				$items.find("span.ebdp-pc4promote-menu-level1-text").each(
						function(i) {
							if (jQuery(this).text() == param) {
								index = i;
								return;
							}
						});
			}
			$items.eq(index).find("span.ebdp-pc4promote-menu-level1-text")
					.addClass("ebdp-pc4promote-menu-level1-selected");
			if (_hasLevel2) {
				_setLevel1Click($items.eq(index));
				var $item2s = _$level2
						.find("li.ebdp-pc4promote-menu-level2-node-type5");
				$item2s
						.removeClass("ebdp-pc4promote-menu-level2-selected-type5");
				var index2 = 0;
				if (typeof param2 == 'number') {
					index2 = param2;
				} else if (typeof param2 == 'string') {
					$item2s.find("span.ebdp-pc4promote-menu-level2-text-type5")
							.each(function(i) {
								if (jQuery(this).text() == param2) {
									index2 = i;
									return;
								}
							});
				}
				if (index2 || index2 == 0) {
					$item2s.eq(index2).addClass(
							"ebdp-pc4promote-menu-level2-selected-type5");
					_setLevel2Click($item2s.eq(index2));
				}
			}
		}

		/**
		 * 根据param值获取菜单一的索引
		 * 
		 * @param param1
		 */
		function _getIndexByParamForLevel1(param1) {
			var $items = _$level1.find("li.ebdp-pc4promote-menu-level1-node");
			var index = 0;
			if (typeof param1 == 'number') {
				index = param1;
			} else if (typeof param1 == 'string') {
				$items.find("span.ebdp-pc4promote-menu-level1-text").each(
						function(i) {
							if (jQuery(this).text() == param1) {
								index = i;
								return;
							}
						});
			}
			return index;
		}
		
		/**
		 * 根据param值获取菜单一的索引
		 * 
		 * @param param1
		 */
		function _getIndexByParamForLevel1_type12(param1) {
			var $items = _$level1.find("li.ebdp-pc4promote-menu-level1-node-else");
			var index = 0;
			if (typeof param1 == 'number') {
				index = param1;
			} else if (typeof param1 == 'string') {
				$items.find("span.ebdp-pc4promote-menu-level1-text-else").each(
						function(i) {
							if (jQuery(this).text() == param1) {
								index = i;
								return;
							}
						});
			}
			return index;
		}

		/**
		 * 根据param值获取菜单二的索引
		 * 
		 * @param param2
		 */
		function _getIndexByParamForLevel2(param2) {
			var $item2s = _$level2.find("li.ebdp-pc4promote-menu-level2-node");
			var index2 = 0;
			if (typeof param2 == 'number') {
				index2 = param2;
			} else if (typeof param2 == 'string') {
				$item2s.find("span.ebdp-pc4promote-menu-level2-text").each(
						function(i) {
							if (jQuery(this).text() == param2) {
								index2 = i;
								return;
							}
						});
			}
			return index2;
		}

		/**
		 * 设置选中项-一级菜单
		 * 
		 * @param param
		 *            为Number时是第几项，为String时是显示文件所在项
		 */
		function _setSelectedItemLevel1(param1, param2) {
			var $items = _$level1.find("li.ebdp-pc4promote-menu-level1-node");
			if (_type == '6') {
				$items.find("span.ebdp-pc4promote-menu-level1-text")
						.removeClass(
								"ebdp-pc4promote-menu-level1-selected-type6");
			} else if (_type == '10') {
				$items.find("span.ebdp-pc4promote-menu-level1-text")
						.removeClass(
								"ebdp-pc4promote-menu-level1-selected-type10");
			} else {
				$items.find("span.ebdp-pc4promote-menu-level1-text")
						.removeClass("ebdp-pc4promote-menu-level1-selected");
			}
			var index = _getIndexByParamForLevel1(param1);
			if (_type == '6') {
				$items.eq(index).find("span.ebdp-pc4promote-menu-level1-text")
						.addClass("ebdp-pc4promote-menu-level1-selected-type6");
			} else if (_type == '10') {
				$items
						.eq(index)
						.find("span.ebdp-pc4promote-menu-level1-text")
						.addClass("ebdp-pc4promote-menu-level1-selected-type10");
			} else {
				$items.eq(index).find("span.ebdp-pc4promote-menu-level1-text")
						.addClass("ebdp-pc4promote-menu-level1-selected");
			}

			if (_hasLevel2) {
				_setLevel1Click($items.eq(index));
				_setSelectedItemLevel2(param2);
			} else {
				_setLevel1Click($items.eq(index));// 只设置第一级选中
			}

			if (_type == '3' || _type == '7' || _type == '12') {
				_level1Click_type3($items.eq(index));
			} else if (_type == '8' || _type == '11') {
				_level1Click_type8($items.eq(index));
			}
		}

		/**
		 * 设置选中项-二级菜单
		 * 
		 * @param param
		 *            为Number时是第几项，为String时是显示文件所在项
		 */
		function _setSelectedItemLevel2(param) {
			var $item2s = _$level2.find("li.ebdp-pc4promote-menu-level2-node");
			$item2s.find("span.ebdp-pc4promote-menu-level2-text").removeClass(
					"ebdp-pc4promote-menu-level2-selected");
			var index2 = _getIndexByParamForLevel2(param);
			if (index2 || index2 == 0) {
				$item2s.eq(index2).find("span").addClass(
						"ebdp-pc4promote-menu-level2-selected");
				_setLevel2Click($item2s.eq(index2));
			}
		}

		/**
		 * 设置选中项-二级菜单
		 * 
		 * @param param
		 *            为Number时是第几项，为String时是显示文件所在项
		 */
		function _setSelectedItem_type4(param) {
			var $item2s = _$level2
					.find("li.ebdp-pc4promote-menu-level2-node-type4");
			$item2s.removeClass("ebdp-pc4promote-menu-level2-selected-type4");
			var index2 = 0;
			if (typeof param == 'number') {
				index2 = param;
			} else if (typeof param == 'string') {
				$item2s.find("span.ebdp-pc4promote-menu-level2-text").each(
						function(i) {
							if (jQuery(this).text() == param) {
								index2 = i;
								return;
							}
						});
			}
			if (index2 || index2 == 0) {
				$item2s.eq(index2).addClass(
						"ebdp-pc4promote-menu-level2-selected-type4");
				_setLevel2Click($item2s.eq(index2));
			}
		}

		/**
		 * 设置选中项-二级菜单
		 * 
		 * @param param
		 *            为Number时是第几项，为String时是显示文件所在项
		 */
		function _setSelectedItem_type9(param) {
			var $item2s = _$level2
					.find("li.ebdp-pc4promote-menu-level2-node-type9");
			$item2s.removeClass("ebdp-pc4promote-menu-level2-selected-type9");
			var index2 = 0;
			if (typeof param == 'number') {
				index2 = param;
			} else if (typeof param == 'string') {
				$item2s.find("span.ebdp-pc4promote-menu-level2-text").each(
						function(i) {
							if (jQuery(this).text() == param) {
								index2 = i;
								return;
							}
						});
			}
			if (index2 || index2 == 0) {
				$item2s.eq(index2).addClass(
						"ebdp-pc4promote-menu-level2-selected-type9");
				_setLevel2Click($item2s.eq(index2));
			}
		}
		

			function _setSelectedItem_type12(param1, param2) {
				
			var $items = _$level1
					.find("li.ebdp-pc4promote-menu-level1-node-else");

			$items.find("span.ebdp-pc4promote-menu-level1-text-else")
					.removeClass("ebdp-pc4promote-menu-level1-selected");

			var index = _getIndexByParamForLevel1_type12(param1);

			$items.eq(index).find("span.ebdp-pc4promote-menu-level1-text-else")
					.addClass("ebdp-pc4promote-menu-level1-selected");

			_setLevel1Click_type12($items.eq(index));// 只设置第一级选中
			// _level1Click_type3($items.eq(index));
		}

		/**
		 * 设置选中项
		 * 
		 * @param param
		 *            为Number时是第几项，为String时是显示文件所在项
		 */
		function _setSelectedItem(param1, param2) {
			if (_type == '1' || _type == '2' || _type == '3' || _type == '6'
					|| _type == '7' || _type == '8' || _type == '10'
					|| _type == '11') {
				_setSelectedItemLevel1(param1, param2);
			} else if (_type == '4') {
				_setSelectedItem_type4(param1);
			} else if (_type == '5') {
				_setSelectedItem_type5(param1, param2);
			} else if (_type == '9') {
				_setSelectedItem_type9(param1);
			} else if (_type == '12') {
				_setSelectedItem_type12(param1,param2);
			}
		}

		/**
		 * 判断是否是IE6或者quirk模式
		 * 
		 * @return boolean
		 */
		function _isIE6OrQuirk() {
			return Util.prototype.isIE()
					&& ((parseInt(jQuery.browser.version, 10) < 9 && Util.prototype
							.isQuirkMode()) || parseInt(jQuery.browser.version,
							10) == 7);
		}
		/**
		 * IE8兼容模式，360的IE8兼容模式下，只是针对
		 */
		function _isIE8Compatible() {
			var ret = Util.prototype.getIEVersionAndMode();
			if (ret.version == 8 && ret.mode < 8) {
				return true;
			}
			return false;
		}

		/**
		 * 当菜单数量<6时，如果文字>16个字符，则自适应，左右加12padding
		 */
		function _adjust16Char(obj) {
			obj.each(function() {
				var thisObj = jQuery(this);
				var thisText = thisObj.text();
				if (Util.prototype.getStrLen(thisText) > 16) {
					thisObj.css("width", "auto").addClass(
							"ebdp-pc4promote-menu-16text-padding");

				}
			});
		}

		/**
		 * 如果一级菜单自适应仍然超出，则出现左右滑动
		 */
		function _adjustAutoScrollForMenu1() {
			var totalWidth = _$menu.outerWidth();
			var liWidth = 0;
			var $menuLis = _$level1.find("li.ebdp-pc4promote-menu-level1-node");
			var size = $menuLis.size();
			
			$menuLis.each(function() {
				liWidth += parseInt(jQuery(this).outerWidth());
			});
			if (liWidth > totalWidth) {
				// _autoSize = "3";
				_autoSizeForLevel1 = '1';
				_$level1.find(".ebdp-pc4promote-menu-level1-text").removeClass(
						"ebdp-pc4promote-menu-text-padding");
				// var wrapperWidth = parseInt(_$level1.width(), 10);
				// if (wrapperWidth < size * _level1Width) {
				if (_isIE6OrQuirk() || _isIE8Compatible()) {
					var tempWidth = _$menu.outerWidth();
					_$block.width(tempWidth);
					_$level1.width(tempWidth - 80);
					// _$level1.width(wrapperWidth-80).css({"position":"relative","left":"40px"});
				} else {
					_$block.css("padding", "0 40px");
				}
				_$ulForLevel1.width(size * _level1Width);
				_$nextButtonForLevel1.show();
				_$ulForLevel1.find("li.ebdp-pc4promote-menu-level1-node").eq(0)
						.addClass("level1-currentFirst");
				_currentIndexForLevel1 = 0;
			}
		}

		/**
		 * 如果二级菜单自适应仍然超出，则出现左右滑动
		 */
		function _adjustAutoScrollForLevel2() {
			var totalWidth = _$menu.outerWidth();
			var liWidth = 0;
			var $menuLis = _$level2.find("li.ebdp-pc4promote-menu-level2-node");
			var ua = navigator.userAgent;
			if (_type == '4') {
				$menuLis = _$level2
						.find("li.ebdp-pc4promote-menu-level2-node-type4");
			}

			$menuLis.each(function() {
				liWidth += parseInt(jQuery(this).outerWidth());
			});
			_$level2.find(".ebdp-pc4promote-menu-level2-text").removeClass(
					"ebdp-pc4promote-menu-text-padding");
			if (liWidth > totalWidth) {
				// _autoSize = "5";
				_autoSizeForLevel2 = '1';
				var size = $menuLis.size();
				// var wrapperWidth = parseInt(_$level2.width(), 10);
				// if (wrapperWidth < size * 160) {
				if (_isIE6OrQuirk()) {
					var tempWidth2 = _$menu.outerWidth();
					_$block2.width(tempWidth2);
					_$level2.width(tempWidth2 - 80);
					_$block2.css("background-color", "#fafafa");
				} else {
					_$block2.css({
						"padding" : "0 40px",
						"background-color" : "#fafafa"
					});
				}
				_level2Width = $menuLis.eq(0).outerWidth();
				_$ulForLevel2 = _$level2.find(".ebdp-pc4promote-menu-level2");
				if (_type == '4') {
					_$ulForLevel2 = _$level2
							.find(".ebdp-pc4promote-menu-level2-type4");
				}
				if (ua.indexOf("Mac OS ") > -1 && ua.indexOf("Version/10") > -1
						&& ua.indexOf("Safari") > -1) {
					_$ulForLevel2.width(size * (_level2Width + 1) + 1);
				} else {
					_$ulForLevel2.width(size * _level2Width);
				}

				var $theSelectedLi = _$ulForLevel2.find("li[isselected='1']");
				if ($theSelectedLi) {
					$theSelectedLi.addClass("level2-currentFirst");
					_adjustBtn2();
				} else {
					_$nextButtonForLevel2.show();
					var $firstObj = _$ulForLevel2.find(
							"li.ebdp-pc4promote-menu-level2-node").eq(0);
					if (_type == '4') {
						$firstObj = _$ulForLevel2.find(
								"li.ebdp-pc4promote-menu-level2-node-type4")
								.eq(0);
					}
					$firstObj.addClass("level2-currentFirst");
					_currentIndexForLevel2 = 0;
				}

			}

		}

		function _executeBody() {
			_$level1.empty();
			_$level2.empty();
			var menuStr = _createMenu();
			if (_wrapperWidth) {
				_$menu.width(_wrapperWidth);
			}

			var _tempWidth = _$menu.width();

			if (_type == '1' || _type == '2' || _type == '3' || _type == '6'
					|| _type == '7' || _type == '8' || _type == '10'
					|| _type == '11' || _type == '12') {
				_$level1.append(menuStr).show();
				_$ulForLevel1 = _$level1.find(".ebdp-pc4promote-menu-level1");
				if (!_hasLevel2) {
					_$level2.hide();
				}

				if (_type == '6') {
					_$level1.css({
						'font-size' : '14px',
						'height' : '31px'
					});
					// _$level1.find(".ebdp-pc4promote-menu-level1-node").css('line-height','31px').css('height','29px');
					_$level1.find(".ebdp-pc4promote-menu-level1-node")
							.addClass("ebdp-pc4promote-menu-level1-node-type6");
					// _$level1.find(".ebdp-pc4promote-menu-level1-text").css('height','31px').css('padding','0px
					// 13px');
					_$level1.find(".ebdp-pc4promote-menu-level1-text")
							.addClass("ebdp-pc4promote-menu-level1-text-type6");
				}

				if (_type == '7') {
					_$level1.find(".ebdp-pc4promote-menu-level1-node")
							.addClass("ebdp-pc4promote-menu-level1-node-type7");
					_$level1.find(".ebdp-pc4promote-menu-level1-text")
							.addClass("ebdp-pc4promote-menu-level1-text-type7");
				}

				if (_type == '8' || _type == '11') {
					_$level1
							.addClass("ebdp-pc4promote-menu-level1-wrapper-type8");
					_$level1.find(".ebdp-pc4promote-menu-level1-node")
							.addClass("ebdp-pc4promote-menu-level1-node-type8");
					_$level1.find(".ebdp-pc4promote-menu-level1-text")
							.addClass("ebdp-pc4promote-menu-level1-text-type8");
				}

				if (_type == '10') {
					_$level1
							.addClass("ebdp-pc4promote-menu-level1-wrapper-type10");
					_$block
							.addClass("ebdp-pc4promote-menu-level1-wrapper-type10");
					_$block2.css("background", "#fafafa");
				}

				if (_type == '12') {
					_$level1.removeClass("ebdp-pc4promote-menu-level1-wrapper");
					_$level1
							.addClass("ebdp-pc4promote-menu-level1-wrapper-type12");
					_$level1
							.find(".ebdp-pc4promote-menu-level1-node")
							.addClass("ebdp-pc4promote-menu-level1-node-type12");
					_$level1
							.find(".ebdp-pc4promote-menu-level1-text")
							.addClass("ebdp-pc4promote-menu-level1-text-type12");
					var moreItemFirst = jQuery(".ebdp-pc4promote-menu-level1-node-more li:first");
					moreItemFirst.css("border-top", "2px solid #c7000b");
				}

				if (_type == '1' || _type == '2' || _type == '5') {
					_$level2.addClass("ebdp-pc4promote-menu-level2-gradient");
				}

				/** 设置宽度 */
				var $nodes = _$level1
						.find("li.ebdp-pc4promote-menu-level1-node");
				var size = $nodes.size();

				/** 解决safari下某下版本问题 */
				if (size > 1) {
					_level1Width = Math.ceil($nodes.eq(0).outerWidth());
					if (_level1Width < 150) {
						_level1Width = 150;
					}
				}

				// 如果size大于6，则按照autosize自适应来处理
				if (_type != '7' && _type != '8' && _type != '12') {
					if (size > 6) {
						_autoSize = '2';
						_$prevButtonForLevel1.hide();
						_$nextButtonForLevel1.hide();

						/** 新增 */
						if (_type == '1' || _type == '2' || _type == '3'
								|| _type == '6' || _type == '10'
								|| _type == '11') {
							if (_autoSize == '1' || _autoSize == '2') {
								_$level1
										.find(
												".ebdp-pc4promote-menu-level1-text")
										.addClass(
												"ebdp-pc4promote-menu-text-padding");

								if (_autoSize == '2') {
									_adjustAutoScrollForMenu1();
								}
							}
						}
					} else {// 少于6的分支
						_adjust16Char(_$level1
								.find(".ebdp-pc4promote-menu-level1-text"));
						_adjustAutoScrollForMenu1();
					}
				}

				if (_type == '12') {
					var size_more = size;
					if (size_more > _maxItemNum)
						size_more = _maxItemNum + 1;

					if (size_more <= 12) {
						var theClass = "ebdp-col-" + size_more;
						if (_isIE6OrQuirk() || _isIE8Compatible()) {
							theClass = "ebdp-col-" + size_more + "-quirk";
						}
					}
					$nodes.each(function(i) {
						jQuery(this).addClass(theClass);
						jQuery(this).find(".ebdp-pc4promote-menu-level1-text")
								.width("100%");
					});
					var $nodes_more = _$level1
							.find("li.ebdp-pc4promote-menu-level1-node-more-type12");
					$nodes_more
							.each(function(i) {
								if (_isIE6OrQuirk() || _isIE8Compatible()) {
									jQuery(this).addClass("ebdp-col-1-quirk");
								} else {
									jQuery(this).addClass("ebdp-col-1");
								}
								jQuery(this)
										.find(
												".ebdp-pc4promote-menu-level1-text-more-type12")
										.width("100%");
							});
				}

				if (_type == '7' || _type == '8') {
					if (size <= 12) {
						var theClass = "ebdp-col-" + size;
						if (_isIE6OrQuirk() || _isIE8Compatible()) {
							theClass = "ebdp-col-" + size + "-quirk";
						}
					}
					$nodes.each(function(i) {
						jQuery(this).addClass(theClass);
						jQuery(this).find(".ebdp-pc4promote-menu-level1-text")
								.width("100%");
					});
				} else {
					/**
					 * var widthArray = []; var widths; if (_width) { widths =
					 * _width.split("|"); if (widths.length == 1) { for ( var i =
					 * 0; i < size; i++) { widthArray[i] = _width; } } else {
					 * widthArray = widths; }
					 * 
					 * $nodes.each(function(i) { var totalWidth =
					 * _$level1.width(); var tempWidth = 0; if
					 * (widthArray[i].lastIndexOf("%") != -1) { tempWidth =
					 * parseInt(totalWidth (parseInt(widthArray[i], 10) / 100),
					 * 10); } else { tempWidth = parseInt(widthArray[i], 10); }
					 * if (_isIE6OrQuirk()) { tempWidth -= 7; } else { tempWidth -=
					 * 58; } jQuery(this).find(
					 * ".ebdp-pc4promote-menu-level1-text").width( tempWidth);
					 * }); }
					 */
				}

				if (_level1_padding) {
					
					_$level1.find(".ebdp-pc4promote-menu-level1-text").css(
							'padding-left', parseInt(_level1_padding, 10)).css(
							'padding-right', parseInt(_level1_padding, 10));
				}

				if (_level2_padding) {
					_$level1.find("span.ebdp-pc4promote-menu-level2-text").css(
							'padding-left', parseInt(_level2_padding, 10)).css(
							'padding-right', parseInt(_level2_padding, 10));
				}
			} else if (_type == '5') {
				_$level1.append(menuStr).show();
				if (!_hasLevel2) {
					_$level2.hide();
				}
				_$level2.addClass("ebdp-pc4promote-menu-level2-wrapper-type5");
				// _$level2.find("li.ebdp-pc4promote-menu-level2-node").addClass("ebdp-pc4promote-menu-level2-node-type5");
				/** 设置宽度 */
				var $nodes = _$level1
						.find("li.ebdp-pc4promote-menu-level1-node");

				var size = $nodes.size();

				if (size > 6) {
					_autoSize = '1';
					if (_autoSize == '1') {
						_$level1.find(".ebdp-pc4promote-menu-level1-text").css(
								"width", "auto").addClass(
								"ebdp-pc4promote-menu-text-padding");
						_$prevButtonForLevel1.hide();
						_$nextButtonForLevel1.hide();
					}
				} else {
					_adjust16Char(_$level1
							.find(".ebdp-pc4promote-menu-level1-text"));
					_adjustAutoScrollForMenu1();
				}

				var widthArray = [];
				var widths;
				if (_width) {
					widths = _width.split("|");
					if (widths.length == 1) {
						for (var i = 0; i < size; i++) {
							widthArray[i] = _width;
						}
					} else {
						widthArray = widths;
					}

					$nodes.each(function(i) {
						var totalWidth = _$level1.width();
						var tempWidth = 0;
						if (widthArray[i].lastIndexOf("%") != -1) {
							tempWidth = parseInt(totalWidth
									* (parseInt(widthArray[i], 10) / 100), 10);
						} else {
							tempWidth = widthArray[i];
						}
						if (_isIE6OrQuirk()) {
							tempWidth -= 7;
						} else {
							tempWidth -= 42;
						}
						jQuery(this).find(".ebdp-pc4promote-menu-level1-text")
								.width(tempWidth);
					});
				}
				if (_level1_padding) {
					_$level1.find(".ebdp-pc4promote-menu-level1-text").css(
							'padding-left', parseInt(_level1_padding, 10)).css(
							'padding-right', parseInt(_level1_padding, 10));
				}
				if (_level2_padding) {
					_$level1.find("span.ebdp-pc4promote-menu-level2-text").css(
							'padding-left', parseInt(_level2_padding, 10)).css(
							'padding-right', parseInt(_level2_padding, 10));
				}
			} else if (_type == '4') {
				_$level1.hide();
				_$block2.css("background", "#fafafa");
				_$level2.append(menuStr).show();
				_$ulForLevel2 = _$level2
						.find(".ebdp-pc4promote-menu-level2-type4");

				/** 设置宽度 */
				var $nodes = _$level2
						.find("li.ebdp-pc4promote-menu-level2-node-type4");

				var size = $nodes.size();

				if (size > 6) {
					_autoSize = '2';

					_$level2.removeClass("ebdp-pc4promote-menu-left").width(
							"100%");

					if (_autoSize == '1' || _autoSize == '2') {
						_$level2.find(".ebdp-pc4promote-menu-level2-text")
								.addClass("ebdp-pc4promote-menu-text-padding");
						if (_autoSize == '2') {
							_adjustAutoScrollForLevel2();
						}
					}
				} else {
					_adjust16Char(_$level2
							.find(".ebdp-pc4promote-menu-level2-text"));
					_adjustAutoScrollForLevel2();
				}

				var widthArray = [];
				var widths;
				if (_width) {
					_$level2.css({
						'padding-left' : 0,
						'padding-right' : 0
					});
					$nodes.css({
						'padding-left' : 0,
						'padding-right' : 0
					});
					widths = _width.split("|");
					if (widths.length == 1) {
						for (var i = 0; i < size; i++) {
							widthArray[i] = _width;
						}
					} else {
						widthArray = widths;
					}
					$nodes.each(function(i) {
						jQuery(this).width(widthArray[i]);
						jQuery(this).find(".ebdp-pc4promote-menu-level2-text")
								.width("100%");
					});
				}
			} else if (_type == '9') {
				_$level1.hide();
				_$level2.append(menuStr).show();
				_$level2.addClass("ebdp-pc4promote-menu-level2-wrapper-type9");
				_$block2.css("padding", "14px 0px");
				_$ulForLevel2 = _$level2
						.find(".ebdp-pc4promote-menu-level2-type9");

				/** 设置宽度 */
				var $nodes = _$level2
						.find("li.ebdp-pc4promote-menu-level2-node-type9");

				var size = $nodes.size();

				// jQuery(function(){
				var wrapperWidth = parseInt(_$level2.width(), 10);
				if (wrapperWidth < size * 160) {
					_$block2.css("padding", "14px 40px");
					_$ulForLevel2.width(size * _level2Width);
					_$nextButtonForLevel2.show();
					_$ulForLevel2.find(
							"li.ebdp-pc4promote-menu-level2-node-type9").eq(0)
							.addClass("level2-currentFirst");
					_currentIndexForLevel2 = 0;
				}
				// });

				var widthArray = [];
				var widths;
				if (_width) {
					_$level2.css({
						'padding-left' : 0,
						'padding-right' : 0
					});
					$nodes.css({
						'padding-left' : 0,
						'padding-right' : 0
					});
					widths = _width.split("|");
					if (widths.length == 1) {
						for (var i = 0; i < size; i++) {
							widthArray[i] = _width;
						}
					} else {
						widthArray = widths;
					}
					$nodes.each(function(i) {
						jQuery(this).width(widthArray[i]);
						jQuery(this).find(".ebdp-pc4promote-menu-level2-text")
								.width("100%");
					});
				}
			}

			_bindEvent();
			_bindType12More();

			/** 设置默认选中项，默认为第一项 */
			_setSelectedItem(_defaultItem1, _defaultItem2);
			if (_type == '1' || _type == '2' || _type == '3' || _type == '6'
					|| _type == '10' || _type == '11') {
				if (_autoSizeForLevel1 == '1') {
					_scrollToVisibleForLevel1(_getIndexByParamForLevel1(_defaultItem1));
				} else {
					if (_type == '10' && _leftFlag == '1') {
						_$level1.find(".ebdp-pc4promote-menu-level1-text")
								.eq(0).css({
									"text-align" : "left"
								});
					}
				}
			}

			if (_type == '4' || _type == '9') {
				if (_autoSizeForLevel2 == '1') {
					_scrollToVisibleForLevel2(_getIndexByParamForLevel2(_defaultItem1));
				}
			}

			if (_type == '1' || _type == '2' || _type == '6' || _type == '10'
					|| _type == '11') {
				_$ulForLevel2 = _$level2.find(".ebdp-pc4promote-menu-level2");
				if (_$ulForLevel2 && _$ulForLevel2.length > 0) {
					if (_autoSizeForLevel2 == '1') {
						_scrollToVisibleForLevel2(_getIndexByParamForLevel2(_defaultItem2));
					}
				}
			}

			if (this.enable == false) {
				_unbindEvent();
			}
		}

		/**
		 * 当前组件展现进行外观处理
		 */
		this.show = function() {
			jQuery(function() {
				_executeBody();
			});
		};

		/**
		 * 设置菜单类型
		 * 
		 * @param type
		 * @return
		 */
		this.setType = function(type) {
			_type = type;
		};

		/**
		 * 设置菜单数据
		 * 
		 * @param menuData
		 * @return
		 */
		this.setMenuData = function(menuData) {
			_menuData = eval(menuData);
		};

		/**
		 * 设置菜单最大单行显示数目
		 * 
		 * @param maxItemNum
		 * @return
		 */
		this.setMaxItemNum = function(maxItemNum) {
			_maxItemNum = maxItemNum;
		};
		/**
		 * 设置默认选项
		 * 
		 * @param defaultItem
		 */
		this.setDefaultItem = function(defaultItem) {
			if (defaultItem) {
				if (defaultItem.indexOf("|") !== -1) {
					_defaultItem1 = defaultItem.split("|")[0];
					_defaultItem2 = defaultItem.split("|")[1];
				} else {
					_defaultItem1 = defaultItem;
					// _defaultItem2 = 0;
				}
			} else {
				_defaultItem1 = 0;
				// _defaultItem2 = 0;
			}

			if (_defaultItem1 == parseInt(_defaultItem1, 10)) {
				_defaultItem1 = parseInt(_defaultItem1, 10);
			}
			if (_defaultItem2 == parseInt(_defaultItem2, 10)) {
				_defaultItem2 = parseInt(_defaultItem2, 10);
			}
		};

		/**
		 * 设置构件宽度
		 * 
		 * @param width
		 */
		this.setWrapperWidth = function(wrapperWidth) {
			_wrapperWidth = wrapperWidth;
		};

		/**
		 * 设置宽度
		 * 
		 * @param width
		 */
		this.setWidth = function(width) {
			_width = width;
		};

		/**
		 * 设置level2宽度
		 * 
		 * @param level2Width
		 */
		this.setLevel2Width = function(level2Width) {
			_level2Width = parseInt(level2Width, 10) + 4;
		};

		/**
		 * 设置padding
		 * 
		 * @param padding
		 */
		this.setPadding = function(padding) {
			    if (padding && padding.indexOf("|") != -1) {
				var paddings = padding.split("|");
				_level1_padding = paddings[0];
				_level2_padding = paddings[1];
			} else {
				
				_level1_padding = padding;
			}
		};

		/**
		 * 设置click时触发的回调函数
		 * 
		 * @param eventClick
		 */
		this.setEventClickHandler = function(eventClick) {
			_eventClick = eventClick;
		};

		/**
		 * 设置事件附加数据
		 * 
		 * @param attachData
		 */
		this.setAttachData = function(attachData) {
			_attachData = attachData;
		};

		/**
		 * 设置自适应
		 * 
		 * @param autoSize
		 */
		this.setAutoSize = function(autoSize) {
			_autoSize = autoSize;
		};

		/**
		 * 设置标签文字靠左显示
		 * 
		 * @param leftFlag
		 */
		this.setLeftFlag = function(leftFlag) {
			_leftFlag = leftFlag; 
		};

		/**
		 * 设置type=4的底边颜色
		 * @param borderType4
		 */
		this.setBorderType4 = function(borderType4) {
			_borderType4 = borderType4; 
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
					_$menu.show();
				} else {
					_$menu.hide();
				}
			}
		};

		/**
		 * 设置是否可用
		 * 
		 * @param enable
		 */
		this.setEnable = function(enable) {
			if (this.enable != enable) {
				this.enable = enable;
				if (enable) {
					_bindEvent();
				} else {
					_unbindEvent();
				}
			}
		};

		/**
		 * 将菜单项设置为选中状态
		 * 
		 * @param selectedItem
		 */
		this.setSelectedItem = function(selectedItem) {
			var _selectedItem1 = '';
			var _selectedItem2 = '';
			if (selectedItem) {
				if (selectedItem.indexOf("|") !== -1) {
					_selectedItem1 = selectedItem.split("|")[0];
					_selectedItem2 = selectedItem.split("|")[1];
				} else {
					_selectedItem1 = selectedItem;
				}
			} else {
				_selectedItem1 = 0;
			}

			if (_selectedItem1 == parseInt(_selectedItem1, 10)) {
				_selectedItem1 = parseInt(_selectedItem1, 10);
			}
			if (_selectedItem2 == parseInt(_selectedItem2, 10)) {
				_selectedItem2 = parseInt(_selectedItem2, 10);
			}

			_setSelectedItem(_selectedItem1, _selectedItem2);
		};

		/**
		 * 获取当前选中菜单索引
		 * 
		 * @retutn
		 */
		this.getSelectedItem = function() {
			var index1 = null;
			var index2 = null;
			if (_type == '1' || _type == '2') {
				var $level1_selectedLi = _$level1.find(
						"li span.ebdp-pc4promote-menu-level1-selected").parent(
						'li');
				var $level1_lis = _$level1
						.find("li.ebdp-pc4promote-menu-level1-node");
				index1 = $level1_lis.index($level1_selectedLi);
				var $level2_selectedLi = _$level2.find(
						"li span.ebdp-pc4promote-menu-level2-selected").parent(
						'li');
				var $level2_lis = _$level2
						.find("li.ebdp-pc4promote-menu-level2-node");
				index2 = $level2_lis.index($level2_selectedLi);
				return index1 + "-" + index2;
			} else if (_type == '3' || _type == '7' || _type == '8'
					|| _type == '12') {
				var $level1_selectedLi = _$level1.find(
						"li span.ebdp-pc4promote-menu-level1-selected").parent(
						'li');
				var $level1_lis = _$level1
						.find("li.ebdp-pc4promote-menu-level1-node");
				index1 = $level1_lis.index($level1_selectedLi);
				return index1;
			} else if (_type == '4') {
				var $level2_selectedLi = _$level2
						.find("li.ebdp-pc4promote-menu-level2-selected-type4");
				var $level2_lis = _$level2
						.find("li.ebdp-pc4promote-menu-level2-node-type4");
				index2 = $level2_lis.index($level2_selectedLi);
				return index2;
			} else if (_type == '5') {
				var $level1_selectedLi = _$level1.find(
						"li span.ebdp-pc4promote-menu-level1-selected").parent(
						'li');
				var $level1_lis = _$level1
						.find("li.ebdp-pc4promote-menu-level1-node");
				index1 = $level1_lis.index($level1_selectedLi);
				var $level2_selectedLi = _$level2
						.find("li.ebdp-pc4promote-menu-level2-selected-type5");
				var $level2_lis = _$level2
						.find("li.ebdp-pc4promote-menu-level2-node-type5");
				index2 = $level2_lis.index($level2_selectedLi);
				return index1 + "-" + index2;
			} else if (_type == '6') {
				var $level1_selectedLi = _$level1.find(
						"li span.ebdp-pc4promote-menu-level1-selected-type6")
						.parent('li');
				var $level1_lis = _$level1
						.find("li.ebdp-pc4promote-menu-level1-node");
				index1 = $level1_lis.index($level1_selectedLi);
				var $level2_selectedLi = _$level2.find(
						"li span.ebdp-pc4promote-menu-level2-selected").parent(
						'li');
				var $level2_lis = _$level2
						.find("li.ebdp-pc4promote-menu-level2-node");
				index2 = $level2_lis.index($level2_selectedLi);
				return index1 + "-" + index2;
			} else if (_type == '9') {
				var $level2_selectedLi = _$level2
						.find("li.ebdp-pc4promote-menu-level2-selected-type9");
				var $level2_lis = _$level2
						.find("li.ebdp-pc4promote-menu-level2-node-type9");
				index2 = $level2_lis.index($level2_selectedLi);
				return index2;
			} else if (_type == '10') {
				var $level1_selectedLi = _$level1.find(
						"li span.ebdp-pc4promote-menu-level1-selected-type10")
						.parent('li');
				var $level1_lis = _$level1
						.find("li.ebdp-pc4promote-menu-level1-node");
				index1 = $level1_lis.index($level1_selectedLi);
				var $level2_selectedLi = _$level2.find(
						"li span.ebdp-pc4promote-menu-level2-selected").parent(
						'li');
				var $level2_lis = _$level2
						.find("li.ebdp-pc4promote-menu-level2-node");
				index2 = $level2_lis.index($level2_selectedLi);
				return index1 + "-" + index2;
			}
		};

		/**
		 * 设置level1的css属性
		 * 
		 * @param name
		 * @param value
		 */
		this.setLevel1Css = function(name, value) {
			var $nodes = _$level1.find("li.ebdp-pc4promote-menu-level1-node");
			if (value) {
				$nodes.css(name, value);
			} else {
				$nodes.css(name);
			}
		};

		/**
		 * 设置level2的css属性
		 * 
		 * @param name
		 * @param value
		 */
		this.setLevel2Css = function(name, value) {
			var $nodes = _$level2.find("li.ebdp-pc4promote-menu-level2-node");
			if (value) {
				$nodes.css(name, value);
			} else {
				$nodes.css(name);
			}
		};
	}
	;

	return _menu;
})();