$(function(){
	/*初始*/
	$(".banner-box .banner-img").hide();
	$(".banner-box .banner-img:eq(0)").show()	
	var n=0;//*记录图片下标
	/*数的按钮*/
	$(".banner-bolck .banner-ctrl_btn .banner-number li").click(function(){
		n = $(this).index();
		$(".banner-box .banner-img").hide();
		$(".banner-box .banner-img:eq("+n+")").show();
		$(".banner-bolck .banner-ctrl_btn .banner-number li").removeClass("on");
		$(this).addClass("on");
	})
	/*自动播放*/
	function changeN(){
		if(n<$(".banner-box .banner-img").length-1){
			n=n+1;
		}else{
			n=0;
		}
		$(".banner-box .banner-img").hide();
		$(".banner-box .banner-img:eq("+n+")").show();	
		$(".banner-bolck .banner-ctrl_btn .banner-number li").removeClass("on");
		$(".banner-bolck .banner-ctrl_btn .banner-number li:eq("+n+")").addClass("on");
	}
	var timer = setInterval(changeN,3000);
	/*控制*/
	$(".banner-bolck .banner-ctrl_btn .banner-number li,.banner-box .banner-img").hover(function(){
		clearInterval(timer);	
	},function(){
		timer = setInterval(changeN,3000);
	})
})
