
$(function(){if($('#prodLeft').length>0){if(($.browser.version=="6.0")||($.browser.version=="7.0")){var Hei=$('.product').height()+$('#prodTop').height()+$('.breadcrumb').height()+$('#header').height()+$('#topbar').height();$('#prodLeft').css('top',Hei);}}});var browser={versions:function(){var u=navigator.userAgent,app=navigator.appVersion;return{trident:u.indexOf('Trident')>-1,presto:u.indexOf('Presto')>-1,webKit:u.indexOf('AppleWebKit')>-1,gecko:u.indexOf('Gecko')>-1&&u.indexOf('KHTML')==-1,mobile:!!u.match(/AppleWebKit.*Mobile.*/)||!!u.match(/AppleWebKit/),ios:!!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/),android:u.indexOf('Android')>-1||u.indexOf('Linux')>-1,iPhone:u.indexOf('iPhone')>-1||u.indexOf('Mac')>-1,iPad:u.indexOf('iPad')>-1,webApp:u.indexOf('Safari')==-1};}(),language:(navigator.browserLanguage||navigator.language).toLowerCase()}
function setMinCartScroll(){if($('#cart_f .pro').length>0){if($('#cart_f .pro').length>4){$('#cart_f ul').addClass('scroll');var w=$('#cart_f').width()+7;$('#cart_f').width(w);}else{$('#cart_f ul').removeClass('scroll');}}}
$.fn.opNum=function(options){var ops={addBtn:'aBtn',minusBtn:'mBtn',nums:'nums',downLimit:1,numStep:50,defVal:1,upLimit:999}
options&&$.extend(ops,options);$(this).find('.'+ops.nums).val(ops.defVal);$(this).find('.'+ops.minusBtn).click(function(e){var numsV=parseInt($(this).siblings('.'+ops.nums).val());if(numsV>ops.downLimit){$(this).siblings('.'+ops.nums).val(numsV-ops.numStep);}});$(this).find('.'+ops.addBtn).click(function(){var numsV=parseInt($(this).siblings('.'+ops.nums).val());if(numsV<ops.upLimit){$(this).siblings('.'+ops.nums).val(numsV+ops.numStep);}});}
$.fn.easyBanr=function(options){var ops={idx:0,looper:3500,imgLi:'a',pager:'pg',pages:'pgs',pageCur:'pgc'}
options&&$.extend(ops,options);$(this).each(function(index,element){var obj=$(this);var len=$(ops.imgLi,obj).length;var pgn=1+ops.idx;var pgs=$('.'+ops.pages,obj).html(""+$(ops.imgLi,obj).length);var pgr=$('.'+ops.pager,obj);function showImg(){if(len>1){var imgli=$(ops.imgLi,obj).eq(ops.idx);$(ops.imgLi,obj).not(imgli).hide();imgli.stop(true,true).fadeIn('slow');pgn=ops.idx=(++ops.idx)%(len);(pgn==0)?$('.'+ops.pageCur,obj).html(len):$('.'+ops.pageCur,obj).html(pgn);}else{pgr.remove();}}
var myTimer;$(this).hover(function(){if(myTimer){clearInterval(myTimer);}},function(){myTimer=setInterval(function(){showImg();},ops.looper);}).mouseleave();showImg();});}
function flyImg(thisSelector,target){var obj=$(thisSelector);var _top=obj.offset().top;var _left=obj.offset().left;var _tleft=$(target).offset().left+($(target).width()/2);var _ttop=$(target).offset().top+($(target).height()/2);var $cpic=obj.clone().attr('id','flyImg').css({'position':'absolute','z-index':999,'left':_left,'top':_top,'width':388,'height':388});$(document.body).append($cpic);$cpic.animate({top:_ttop,left:_tleft,height:0,width:0,display:'none'},'slow',function(){$cpic.remove();});}
function getCookieByUId(uid){var uid=(uid.indexOf('uid_')!=-1)?uid:'uid_'+uid;var cookieArys=document.cookie.split('; ');if(!cookieArys){return;}
for(i=0;i<cookieArys.length;i++){if(cookieArys[i].substring(0,uid.length+1)==(uid+'=')){return cookieArys[i];}}}
function getCookie(name,value){if(typeof value!='undefined'){if(value===null){value='';}
var cok=getCookieByUId(name);if(cok&&cok!=''){var contacts=cok.split('=')[1];var contactsAry=contacts.split('|');if(contactsAry.length>9){contactsAry.shift();contacts=contactsAry.join('|');}
contacts+='|'+value;cok=name+'='+contacts;}else{cok=name+'='+value;}
document.cookie=cok;}else{var name=(name.indexOf('uid_')!=-1)?name:'uid_'+name;return getCookieByUId(name);}}
function addContacts(uid,id,shopName,name,isActive,url){var uid='uid_'+uid;var user=getCookie(uid);if(user){var contacts=user.split('=')[1];var contactsAry=contacts.split('|');for(i=0;i<contactsAry.length;i++){var contactsObj=eval("("+contactsAry[i]+")");if(contactsObj.id===id){return;}}}
getCookie(uid,'{"id":"'+id+'","shopName":"'+shopName+'","name":"'+name+'","isActive":"'+isActive+'","url":"'+url+'"}');initContacts(uid);}
function initContacts(uid){var uid=(uid.indexOf('uid_')!=-1)?uid:'uid_'+uid,contacts=getCookie(uid);if(contacts){var contacts=contacts.split('=')[1];var contactsAry=contacts.split('|');var $rollCon=$("#rollBox ul");var rooConLi="";for(i=0;i<contactsAry.length;i++){var contactsObj=eval("("+contactsAry[i]+")");if(contactsObj.isActive==="1"){rooConLi+="<li id='"+uid+"' uid='li_u"+hex_md5(contactsObj.name+"@im.mall.icbc.com.cn")+"' url='"+unescape(contactsObj.url)+"' onclick=\"clickIMOnlineFun(this,'"+unescape(contactsObj.url)+"','"+contactsObj.name+"')\"><div class='mc'><h5 title='"+contactsObj.shopName+"'>"+contactsObj.shopName+"</h5><div title='"+contactsObj.name+"'>"+contactsObj.name+"</div></div></li>";}else{rooConLi+="<li class='unline' uid='li_u"+hex_md5(contactsObj.name+"@im.mall.icbc.com.cn")+"' id='"+uid+"' url='"+unescape(contactsObj.url)+"' onclick=\"clickIMOnlineFun(this,'"+unescape(contactsObj.url)+"','"+contactsObj.name+"')\"><div class='mc'><h5 title='"+contactsObj.shopName+"'>"+contactsObj.shopName+"</h5><div title='"+contactsObj.name+"'>"+contactsObj.name+"</div></div></li>";}}
$rollCon.html(rooConLi);}}
$.fn.ancestor=function(num){var self=this;for(var i=0;i<num;i++){self=self.parent();}
return self;}
$.fn.roll=function(options){var settings={goDown:'goDown',goUp:'goUp',rollCon:'rollCon'}
options&&$.extend(settings,options);this.each(function(){var $rollCon=$('.'+settings.rollCon,this);$('.'+settings.goDown,this).click(function(){$rollCon.find('li:first').insertAfter($rollCon.find('li:last'));});$('.'+settings.goUp,this).click(function(){$rollCon.find('li:last').insertBefore($rollCon.find('li:first'));});});}
function toggleService(obj){setTimeout(function(){var $sbox=$('.service_box',obj);if($sbox.is(':visible')){$sbox.hide();}else{$sbox.show();}},3000);}
$.fn.hoverShow=function(options){var ops={top:'top',topClass:'cur',bottom:'bottom',bottomClass:'cur',timer:400,n:null}
var timer=null;var options=$.extend(ops,options);this.each(function(){var obj=$(this);var oTop=$('.'+options.top,obj);var oBottom=$('.'+options.bottom,obj);obj.on({mouseenter:function(){var $this=$(this);clearTimeout(options.n);options.n=setTimeout(function(){$this.css('zIndex',10);oTop.addClass(options.topClass);oBottom.addClass(options.bottomClass).show();},options.timer);},mouseleave:function(){clearTimeout(options.n);$(this).removeAttr('style');oTop.removeClass(options.topClass);oBottom.hide().removeClass(options.bottomClass);}})})}
$.fn.fadetab=function(options){var ops={topMain:'list_main',bottomMian:'fade_nav',bottomCur:'cur',events:'mouseover',time:500,auto:false,auto_time:3000}
var options=$.extend(ops,options);$(this).each(function(){var $obj=$(this);var $topList=$obj.find('.'+options.topMain).children();for(var i=1,len=$topList.length;i<len;i++){$topList.eq(i).hide();}
if($topList.length==1){return;}
var w=$obj.find('.'+options.bottomMian).children().length*$obj.find('.'+options.bottomMian).children().eq(0).outerWidth(true)-($obj.find('.'+options.bottomMian).children().eq(0).outerWidth(true)-$obj.find('.'+options.bottomMian).children().eq(0).innerWidth(true));$('.'+options.bottomMian).css('marginLeft',w/2);var $bottomList=$obj.find('.'+options.bottomMian).children();var n=-1,m=0;var timer=null;if(options.auto){timer=setInterval(function(){autos();},options.auto_time);}
function autos(){n++;n%=$bottomList.length;fntab($bottomList.eq(n));}
$bottomList.on(options.events,function(){n=$(this).index();fntab($(this));clearInterval(timer);});if(options.auto&&options.events=='mouseover'){$bottomList.on('mouseout',function(){clearInterval(timer);timer=setInterval(function(){autos();},options.auto_time);});}
function fntab(obj){obj.addClass(options.bottomCur).siblings().removeClass(options.bottomCur);$topList.css('zIndex',1).stop().animate({opacity:0},options.time,function(){$topList.hide();$topList.eq(n).css('zIndex',2).show().stop().animate({opacity:1},options.time);})}
if(options.auto){n=0;$bottomList.eq(0).addClass(options.bottomCur);}else{$bottomList.eq(0).trigger(options.events);}})}
$.fn.imgLazyLoading=function(options){var ops={url:'_src',fadeIn:0}
var cache=[];var options=$.extend(ops,options);$(this).each(function(){var $obj=$(this);var nodeName=this.nodeName.toLowerCase();var url=$obj.attr(options.url);var data={obj:$(this),url:url,tag:nodeName}
cache.push(data);});var lazyLoading=function toChange(){$.each(cache,function(key,val){var obj=val.obj;var url=val.url;var tag=val.tag;if(obj){var winHeight=$(window).height();var scrolltop=$(window).scrollTop();var imgTop=obj.offset().top;if(imgTop<winHeight+scrolltop){if(tag==='img'){if(options.fadeIn){obj.fadeIn(options.fadeIn);}
obj.attr("src",url);}else{return false;}
obj=null;}}});};lazyLoading();$(window).on('scroll',function(){lazyLoading();});};function tips(obj){if($('#sun_tips')){var html='';html+='<div id="sun_tips" class="share_pop_b2">';html+='<div class="modal_header"><span class="close"></span>';html+=' </div>';html+=' <div class="body">';html+='  <div class="sun_tips"></div>';html+='  <div class="tac cfx padb20">';html+='   <a href="javascript:;"  class="n_btn" >确定</a>';html+='  </div>';html+='  </div>';html+=' </div>';$('body').append(html);}
var timerMan=null;var timeout=obj.timeout?timeout:1200;var time=obj.time?time:800;var $sunTips=$('#sun_tips');var $text=$sunTips.find('.sun_tips');var $sunBtn=$('#sun_tips').find('.n_btn');var $sunClose=$('#sun_tips').find('.close');$text.html(obj.text);$sunTips.show();clearTimeout(timerMan);timerMan=setTimeout(function(){dissolve();},timeout);$sunBtn.on('click',function(){dissolve();});$sunClose.on('click',function(){dissolve();});function dissolve(){clearTimeout(timerMan);$sunTips.animate({opacity:0},time,function(){$sunTips.hide().css('opacity',100);});};};function loginErrorTips(text,timeout,time,target){if($('#sun_tips')){var html='';html+='<div id="sun_tips" class="share_pop_b2" style="width:331px">';html+='<div class="modal_header"><span class="close"></span>';html+=' </div>';html+=' <div class="body">';html+='  <div class="sun_tips"></div>';html+='  <div class="tac cfx padb20">';html+='   <a href="'+target+'" class="n_btn" >确定</a>';html+='  </div>';html+='  </div>';html+=' </div>';$('body').append(html);}
var timerMan=null;var timeout=timeout?timeout:1200;var time=time?time:800;var $sunTips=$('#sun_tips');var $text=$sunTips.find('.sun_tips');var $sunBtn=$('#sun_tips').find('.n_btn');var $sunClose=$('#sun_tips').find('.close');$text.html(text);$sunTips.show();clearTimeout(timerMan);timerMan=setTimeout(function(){dissolve();},timeout);$sunBtn.on('click',function(){dissolve();});$sunClose.on('click',function(){dissolve();});function dissolve(){clearTimeout(timerMan);$sunTips.animate({opacity:0},time,function(){$sunTips.hide().css('opacity',100);});};};$.fn.fnscrollDown=function(options){var ops={scroll_down:'scroll_down',btnNume:5,cur:'cur'}
var options=$.extend(ops,options);$(this).each(function(){var num=0,$this=$(this),$scroll_down=$this.find('.'+options.scroll_down),$scroll_li=$scroll_down.children(),h=$scroll_li.eq(0).outerHeight(true),allH=$scroll_li.eq(0).outerHeight(true)*(options.btnNume-1)+$scroll_li.eq(options.btnNume-1).height(),len=$scroll_li.length;if(len<options.btnNume){return $(this);}
$scroll_down.wrap('<div class="scroll_downMain" style="margin:5px 0;position:relative;height:'+allH+'px;overflow:hidden;"></div>');$scroll_down.css({'position':'absolute','left':'0','top':'0'});var $scroll_downMain=$this.find('.scroll_downMain');$scroll_downMain.before('<div class="scoll_top"></div>');$scroll_downMain.after('<div class="scoll_bottom cur"></div>');var $scoll_top=$(this).find('.scoll_top'),$scoll_bottom=$(this).find('.scoll_bottom');$scoll_top.on('click',function(){num--;if(num==0){$(this).removeClass(options.cur);}
if(num<0){num=0;return false;}
$scoll_bottom.addClass(options.cur);$scroll_down.animate({'top':-h*num});});$scoll_bottom.on('click',function(){num++;if(num==(len-options.btnNume)){$(this).removeClass(options.cur);}
if(num>(len-options.btnNume)){num=len-options.btnNume;return false;}
$scoll_top.addClass(options.cur);$scroll_down.animate({'top':-h*num});});});};