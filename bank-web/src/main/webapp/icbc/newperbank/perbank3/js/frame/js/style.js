/*返回到底部*/
$(function(){
	$(window).scroll(function(){
		//$("#asd").html($(window).scrollTop());
		if($(window).scrollTop()>85){
			$(".zuiai-block").addClass("fix-bg");
			$(".header-box").addClass("fix-bg");
			$("#fillHeaderDiv").show();/*显示站位div,避免因herder隐藏而猛进*/
		}else{
			$(".zuiai-block").removeClass("fix-bg");
			$(".header-box").removeClass("fix-bg");
			$("#fillHeaderDiv").hide();
			}
		if($(window).scrollTop()>220){
			jQuery("#ICBC_login_frame").css("height",'0');
			$("#ICBC_login").hide();//操作登录框的显示和隐藏
		}else{
			jQuery("#ICBC_login_frame").css("height",'368');
			$("#ICBC_login").show();
		}
	
		});
	})	
/*金融频道下拉*/
$(function(){
	$("#financial").hover(function(){
		$(this).find(".down-menu").show();
		},function(){
			$(this).find('.down-menu').hide();
			})
	$(".down-menu ol li").hover(function(){
		$(this).addClass("active");
		$(this).siblings().removeClass("active")
		})		
	})	
/*news-pop*/
$(function(){
	$(".close-btn").click(function(){
		$(".news-pop").hide();
		})			
	$(".news-btn a").click(function(){
		$(".news-pop").show()
		})			
	})
/*二维码*/
$(function(){
	$("#hove-erweima").hover(function(){
			$(".erweima-box").show();
		},function(){
			$(".erweima-box").hide();
		})
	})	
/*最爱 全选*/
$(function(){
	$(".choose-box a").hover(function(){
		$(this).addClass("active");
		$(this).siblings().removeClass("active");
		if($(".choose-box .quanbu").hasClass("active")){
			$(".choose-pop .choose-1").hide();
			$(".choose-pop").show();
			$(".choose-pop .choose-2").show();
		};
		})
	})
/*全部下拉菜单*/
$(function(){
	$(".choose-quanbu>ol>li").hover(function(){
		$(this).find(".down-right-nemu").show();
		try{
			jQuery("#ICBC_login_frame").css("height",'0');
			$("#ICBC_login").hide();//操作登录框的显示和隐藏
		}catch(e){}
		},function(){
			$(this).find(".down-right-nemu").hide();
			try{
				jQuery("#ICBC_login_frame").css("height",'368');
				$("#ICBC_login").show();
			}catch(e){}
			})
	//	我的网银下拉菜单	
	$(".E-bank").hover(function(){
		$(this).find(".E-banl-down-nemu").show();
		},function(){
			$(this).find(".E-banl-down-nemu").hide();
			})
	})	
