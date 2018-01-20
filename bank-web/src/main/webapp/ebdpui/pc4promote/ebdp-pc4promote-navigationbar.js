var NavigationBar = (function() {
	var _navigationbar = function(id) {
		BaseUI.call(this, id);
		var _outerWapper=jQuery("#"+id);
		var _left=_outerWapper.find(".ebdp-pc4promote-navigationbar-left");
		var _content=_outerWapper.find(".ebdp-pc4promote-navigationbar-content");
		var _contentChangeObj={};
		var _moveOnEventObj={};
		var _moveOffEventObj={};
		var _loginCallBack={};
		var _currSelectLinkIndex=0;
		var _leftLink=null;
		var _openAndCloseNavigation=null;
		var _openAndCloseSwich=0;
		var _gotoPageTop=null;
		var _linkMsgArr={/* 快速交易、交易快照、金融日历、我的消息、在线客服、基金对比、回到顶部 、抽取礼包*/
				"1":{"name":"快速交易"},
				"2":{"name":"交易快照"},
				"3":{"name":"金融日历"},
				"4":{"name":"我的消息"},
				"5":{"name":"在线客服"},
				"6":{"name":"基金对比"},
				"7":{"name":"活动大厅"}
		};
		
		var _createDom=function(){
			/**左边图片列表加载 开始*/
			/*中部区域*/
			var _middleTop=0;
			_middleTop=(jQuery(window).height()-252)/2;//让左侧列表垂直居中，252为其高度
			var htmlStr='<div class="ebdp-pc4promote-navigationbar-left-middle" style="top:'+_middleTop +'px">' +
							"<div class='ebdp-pc4promote-navigationbar-left-middle-link	ebdp-pc4promote-navigationbar-left-middle-img7' data-key='7'></div>" +

							"<div class='ebdp-pc4promote-navigationbar-left-middle-link ebdp-pc4promote-navigationbar-left-middle-img1' data-key='1'></div>" +
							"<div class='ebdp-pc4promote-navigationbar-left-middle-link	ebdp-pc4promote-navigationbar-left-middle-img2' data-key='2'></div>" +
							"<div class='ebdp-pc4promote-navigationbar-left-middle-link	ebdp-pc4promote-navigationbar-left-middle-img3' data-key='3'></div>" +
							"<div class='ebdp-pc4promote-navigationbar-left-middle-link	ebdp-pc4promote-navigationbar-left-middle-img4' data-key='4'></div>" +
							"<div class='ebdp-pc4promote-navigationbar-left-middle-link	ebdp-pc4promote-navigationbar-left-middle-img5' data-key='5'></div>" +
							"<div class='ebdp-pc4promote-navigationbar-left-middle-link	ebdp-pc4promote-navigationbar-left-middle-img6' data-key='6'></div>" +
						"</div>" +
						"<div class='ebdp-pc4promote-navigationbar-left-bottom'>" +
							"<div class='ebdp-pc4promote-navigationbar-left-bottom-link	ebdp-pc4promote-navigationbar-left-bottom-img1'></div>" +
							"<div class='ebdp-pc4promote-navigationbar-left-bottom-link	ebdp-pc4promote-navigationbar-left-bottom-img2'></div>" +
						"</div>";
			_left.html(htmlStr);
			/**左边图片列表加载 结束*/
			
			/**初始化:左侧业务按钮、展开按钮、回到顶部按钮*/
			_leftLink=_outerWapper.find(".ebdp-pc4promote-navigationbar-left-middle");
			_openAndCloseNavigation=_outerWapper.find(".ebdp-pc4promote-navigationbar-left-bottom .ebdp-pc4promote-navigationbar-left-bottom-img1");;
			_gotoPageTop=_outerWapper.find(".ebdp-pc4promote-navigationbar-left-bottom .ebdp-pc4promote-navigationbar-left-bottom-img2");;
		}; 

		var resetAllLinks=function(linkArr){
			linkArr.removeClass("ebdp-pc4promote-navigationbar-left-middle-link-hover");
			linkArr.html("");
		};
		var _bindEvent=function(){
			/**************************绑定鼠标划过左侧链接按钮时的样式(一)  开始*********************************/
			_outerWapper.find('[data-key]').hover(function(){
				//console.log(JSON.stringify(_moveOnEventObj));
				//console.log(JSON.stringify(_moveOffEventObj));
				var currIndex=jQuery(this).attr("data-key");
				if(_moveOnEventObj["link"+currIndex]){
					_moveOnEventObj["link"+currIndex]();
				}
				if(_currSelectLinkIndex!=currIndex){
					jQuery(this).addClass("ebdp-pc4promote-navigationbar-left-middle-link-hover");
					var linkMsg=_linkMsgArr[currIndex].name;
					var htmlStr="<span class='ebdp-pc4promote-navigationbar-left-middle-span'>"+linkMsg.substr(0,2)+"</span>" +
					"<span class='ebdp-pc4promote-navigationbar-left-middle-span'>"+linkMsg.substr(2,2)+"</span>";
					jQuery(this).html(htmlStr);

					/**调整该按钮对应消息(data-msg)样式 开始*/
					_changeButtonMsgStyle(currIndex,"open");
					/**调整该按钮对应消息(data-msg)样式 结束*/
				}
				
			},function(){
				var currIndex=jQuery(this).attr("data-key");
				if(_moveOffEventObj["link"+currIndex]){
					_moveOffEventObj["link"+currIndex]();
				}
				if(_currSelectLinkIndex!=currIndex){
					resetAllLinks(jQuery(this));
				}
				
				if(_currSelectLinkIndex!=currIndex){
					/**调整该按钮对应消息(data-msg)样式 开始*/
					_changeButtonMsgStyle(currIndex,"close");
					/**调整该按钮对应消息(data-msg)样式 结束*/
				}
			});
			/**************************绑定鼠标划过左侧链接按钮时的样式(一)  结束*********************************/
			
			
			/**************************绑定鼠标点击左侧链接按钮时的样式(二)  开始*********************************/
			_outerWapper.find('[data-key]').click(function(){
				/***检查登陆逻辑 开始*****/
				var currLoginIndex=jQuery(this).attr("data-key");
				if(_loginCallBack["link"+currLoginIndex]){
					if(!_loginCallBack["link"+currLoginIndex]()){
						return;
					}
				}
				/***检查登陆逻辑 结束*****/
				resetAllLinks(jQuery(this).siblings(".ebdp-pc4promote-navigationbar-left-middle-link"));
				_currSelectLinkTemp=jQuery(this).attr("data-key");
				//console.log(_contentChangeObj);
				
				if(_currSelectLinkIndex==0){
					/**调整该按钮对应消息(data-msg)样式 开始*/
					_changeButtonMsgStyle(_currSelectLinkTemp,"open");
					/**调整该按钮对应消息(data-msg)样式 结束*/
					
					
					_currSelectLinkIndex=_currSelectLinkTemp;
					_content.empty();
					_content.show();
					if(_contentChangeObj["link"+_currSelectLinkIndex]){
						_contentChangeObj["link"+_currSelectLinkIndex]();
					}
					return;
				}
				
				if(_currSelectLinkIndex!=0&&(_currSelectLinkIndex==_currSelectLinkTemp)){
					/**调整该按钮对应消息(data-msg)样式 开始*/
					_changeButtonMsgStyle(_currSelectLinkTemp,"close");
					/**调整该按钮对应消息(data-msg)样式 结束*/
					
					
					_currSelectLinkIndex=0;
					_content.empty();
					_content.hide();
					return;
				}
				
				if(_currSelectLinkIndex!=0&&(_currSelectLinkIndex!=_currSelectLinkTemp)){
					/**调整该按钮对应消息(data-msg)样式 开始*/
					_changeButtonMsgStyle(_currSelectLinkIndex,"close");
					_changeButtonMsgStyle(_currSelectLinkTemp,"open");
					/**调整该按钮对应消息(data-msg)样式 结束*/
					
					
					_currSelectLinkIndex=_currSelectLinkTemp;
					_content.empty();
					_content.show();
					if(_contentChangeObj["link"+_currSelectLinkIndex]){
						_contentChangeObj["link"+_currSelectLinkIndex]();
					}
					return;
				}
			});
			/**************************绑定鼠标点击左侧链接按钮时的样式(二)  结束*********************************/
			
			
			/**************************绑定鼠标点击左侧展开收起按钮时的样式(三)  开始*******************************/
			_openAndCloseNavigation.click(
				function(){
					if(_openAndCloseSwich==0){
						_openAndCloseSwich=1;
						_leftLink.show();
						jQuery(this).addClass("ebdp-pc4promote-navigationbar-left-bottom-img1-shouqi");
						
					}else{
						_openAndCloseSwich=0;
						_content.empty();
						_content.hide();
						_leftLink.hide();
						_currSelectLinkIndex=0;
						resetAllLinks(_outerWapper.find('[data-key]'));
						jQuery(this).removeClass("ebdp-pc4promote-navigationbar-left-bottom-img1-shouqi");
					}
				}
			);
			//展开收起按钮鼠标滑入事件
			_openAndCloseNavigation.hover(function(){
				var htmlStr="";
				if(_openAndCloseSwich==0){
					htmlStr="<span class='ebdp-pc4promote-navigationbar-left-bottom-span'>展开</span>";
					jQuery(this).append(htmlStr);
					jQuery(this).addClass('ebdp-pc4promote-navigationbar-left-bottom-noImg');
				};
				if(_openAndCloseSwich==1){
					htmlStr="<span class='ebdp-pc4promote-navigationbar-left-bottom-span'>收起</span>";
					jQuery(this).append(htmlStr);
					jQuery(this).addClass('ebdp-pc4promote-navigationbar-left-bottom-noImg');
				};
			},function(){
				jQuery(this).find('.ebdp-pc4promote-navigationbar-left-bottom-span').remove();
				jQuery(this).removeClass('.ebdp-pc4promote-navigationbar-left-bottom-noImg')
			});
			/**************************绑定鼠标点击左侧展开收起按钮时的样式(三)  结束*******************************/
			
			
			/**************************绑定鼠标点击左侧回到顶部按钮时的样式(四)  开始*******************************/
			_gotoPageTop.click(function(){
				window.scrollTo(0,0);
			});
			//回到顶部鼠标滑入事件
			_gotoPageTop.hover(function(){
				var htmlStr="<span class='ebdp-pc4promote-navigationbar-left-middle-span'>返回</span>" +
				"<span class='ebdp-pc4promote-navigationbar-left-middle-span'>顶部</span>";
				jQuery(this).html(htmlStr);
				jQuery(this).addClass('ebdp-pc4promote-navigationbar-left-bottom-noImg');
			},function(){
				jQuery(this).find('.ebdp-pc4promote-navigationbar-left-middle-span').remove();
				jQuery(this).removeClass('.ebdp-pc4promote-navigationbar-left-bottom-noImg')
			});
			/**************************绑定鼠标点击左侧回到顶部按钮时的样式(四)  结束*******************************/
			
		};
		var _changeButtonMsgStyle=function(btnKey,openOrClose){
			var $imitate=jQuery("span[data-msg='"+btnKey+"']");
			 if($imitate.length!=0){
				 
				 $imitate.addClass("ebdp-pc4promote-navigationbar-left-middle-msg-close");
				 
				 if(openOrClose=="open"){
					 $imitate.hide();
					 //$imitate.removeClass("ebdp-pc4promote-navigationbar-left-middle-msg-close"); 
					 //$imitate.addClass("ebdp-pc4promote-navigationbar-left-middle-msg-open"); 
				 }
				 if(openOrClose=="close"){
					 $imitate.show();
					 //$imitate.removeClass("ebdp-pc4promote-navigationbar-left-middle-msg-open"); 
					 //$imitate.addClass("ebdp-pc4promote-navigationbar-left-middle-msg-close"); 
				 }
			 }
		};
		
		this.setButtonMsg=function(btnKey,btnNumber){
			var _this=jQuery("div[data-key='"+btnKey+"']");
			var $imitate=jQuery("span[data-msg='"+btnKey+"']");
            if($imitate.length!=0){
            	if(btnNumber==0){
            		$imitate.hide();
            	}else{
            		if(_currSelectLinkIndex==btnKey){
            			_changeButtonMsgStyle(btnKey,"open");
            		}else{
            			_changeButtonMsgStyle(btnKey,"close");
            		}
            		$imitate.html(btnNumber);
//            		$imitate.show();
            	}
            }else{
            	if(btnNumber!=0){
            		$imitate = $('<span data-msg="'+btnKey+'" class="ebdp-pc4promote-navigationbar-left-middle-msg">' + btnNumber + '</span>');
            		$(_this).before($imitate);
            		if(Util.prototype.isIE()){
            			jQuery('span[data-msg="'+btnKey+'"]').css('line-height','16px');
            		};
            		if(_currSelectLinkIndex==btnKey){
            			_changeButtonMsgStyle(btnKey,"open");
            		}else{
            			_changeButtonMsgStyle(btnKey,"close");
            		}
            	}
            }
		};

		this.openAndCloseTrigger=function(){
			_openAndCloseNavigation.trigger('click');
		};
		
		this.resetNavitionBar=function(){
			if(_openAndCloseSwich==0){
				return;
			}else{
				_openAndCloseNavigation.trigger('click');
				return;
			}
		};
		
		this.hidelink=function(num){
			var currLink=jQuery("div[data-key='"+num+"']");
			currLink.hide();
			if(_currSelectLinkIndex!=0&&(_currSelectLinkIndex==num)){
				_currSelectLinkIndex=0;
				currLink.html("").removeClass("ebdp-pc4promote-navigationbar-left-middle-link-hover");
				_content.hide();
			}
		};
		this.getCurrentPageIndex=function(){
			return _currSelectLinkIndex;
		};
		this.closeContent=function(){
			resetAllLinks(_outerWapper.find('[data-key]'));
			if(_currSelectLinkIndex==0){
				
			}else{
				/**调整该按钮对应消息(data-msg)样式 开始*/
				_changeButtonMsgStyle(_currSelectLinkIndex,"close");
				/**调整该按钮对应消息(data-msg)样式 结束*/
			}
			_currSelectLinkIndex=0;
			_content.empty();
			_content.hide();
			return;
		};

		this.showlink=function(num){
			var currLink=jQuery("div[data-key='"+num+"']");
			currLink.show();
		};
		
		this.changelink=function(num){
			var currLink=jQuery("div[data-key='"+num+"']");
			var currIndex=currLink.attr("data-key");
			var linkMsg=_linkMsgArr[currIndex].name;
			var htmlStr="<span class='ebdp-pc4promote-navigationbar-left-middle-span'>"+linkMsg.substr(0,2)+"</span>" +
			"<span class='ebdp-pc4promote-navigationbar-left-middle-span'>"+linkMsg.substr(2,2)+"</span>";
			if(_currSelectLinkIndex==0){
				_leftLink.show();
				_openAndCloseNavigation.addClass("ebdp-pc4promote-navigationbar-left-bottom-img1-shouqi");
				_openAndCloseSwich=1;
				currLink.html(htmlStr).addClass("ebdp-pc4promote-navigationbar-left-middle-link-hover");
				currLink.trigger('click');
				return;
			}
			if(_currSelectLinkIndex!=0&&(_currSelectLinkIndex==currIndex)){
				currLink.html("").removeClass("ebdp-pc4promote-navigationbar-left-middle-link-hover");
				currLink.trigger('click');
				return;
			}
			if(_currSelectLinkIndex!=0&&(_currSelectLinkIndex!=currIndex)){
				currLink.html(htmlStr).addClass("ebdp-pc4promote-navigationbar-left-middle-link-hover");
				currLink.trigger('click');
				return;
			}
		};
		
		this.closeLinkAndContent=function(){
			_leftLink.hide();
			_content.hide();
		};

		this.getContentDom=function(){
			return _content;
		};
		
		this.show=function(){
			_createDom();
			_bindEvent();
			this.closeLinkAndContent();
			
			
			/***********重置登陆后首次加载构件样式 开始****************/
			_openAndCloseNavigation.trigger('click');
			/***********重置登陆后首次加载构件样式 结束****************/
		};
		
		this.setContentObj=function(contentObj){
			_contentChangeObj=contentObj;
		};
		
		this.setLink1Handler=function(event){
			_contentChangeObj["link1"]=event;
		};
		
		this.setLink2Handler=function(event){
			_contentChangeObj["link2"]=event;
		};
		
		this.setLink3Handler=function(event){
			_contentChangeObj["link3"]=event;
		};
		
		this.setLink4Handler=function(event){
			_contentChangeObj["link4"]=event;
		};
		
		this.setLink5Handler=function(event){
			_contentChangeObj["link5"]=event;
		};
		
		this.setLink6Handler=function(event){
			_contentChangeObj["link6"]=event;
		};

		this.setLink7Handler=function(event){
			_contentChangeObj["link7"]=event;
		};
		this.setLink1loginCallBackHandler=function(event){
			_loginCallBack["link1"]=event;
		};
		this.setLink2loginCallBackHandler=function(event){
			_loginCallBack["link2"]=event;
		};
		this.setLink3loginCallBackHandler=function(event){
			_loginCallBack["link3"]=event;
		};
		this.setLink4loginCallBackHandler=function(event){
			_loginCallBack["link4"]=event;
		};
		this.setLink5loginCallBackHandler=function(event){
			_loginCallBack["link5"]=event;
		};
		this.setLink6loginCallBackHandler=function(event){
			_loginCallBack["link6"]=event;
		};
		this.setLink7loginCallBackHandler=function(event){
			_loginCallBack["link7"]=event;
		};

		this.setLink1MoveonCallBackHandler=function(event){
			_moveOnEventObj["link1"]=event;
		};
		this.setLink1MoveoffCallBackHandler=function(event){
			_moveOffEventObj["link1"]=event;
		};
		
		this.setLink2MoveonCallBackHandler=function(event){
			_moveOnEventObj["link2"]=event;
		};
		this.setLink2MoveoffCallBackHandler=function(event){
			_moveOffEventObj["link2"]=event;
		};
		this.setLink3MoveonCallBackHandler=function(event){
			_moveOnEventObj["link3"]=event;
		};
		this.setLink3MoveoffCallBackHandler=function(event){
			_moveOffEventObj["link3"]=event;
		};
		this.setLink4MoveonCallBackHandler=function(event){
			_moveOnEventObj["link4"]=event;
		};
		this.setLink4MoveoffCallBackHandler=function(event){
			_moveOffEventObj["link4"]=event;
		};
		this.setLink5MoveonCallBackHandler=function(event){
			_moveOnEventObj["link5"]=event;
		};
		this.setLink5MoveoffCallBackHandler=function(event){
			_moveOffEventObj["link5"]=event;
		};
		this.setLink6MoveonCallBackHandler=function(event){
			_moveOnEventObj["link6"]=event;
		};
		this.setLink6MoveoffCallBackHandler=function(event){
			_moveOffEventObj["link6"]=event;
		};
		this.setLink7MoveonCallBackHandler=function(event){
			_moveOnEventObj["link7"]=event;
		};
		this.setLink7MoveoffCallBackHandler=function(event){
			_moveOffEventObj["link7"]=event;
		};
		
	};

	_navigationbar.prototype = new BaseUI();
	_navigationbar.prototype.constructor = _navigationbar;

	return _navigationbar;
})();
