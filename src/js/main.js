$(document).ready(function () {
	setBackgroundElement();
	// header
	mappingMenu();
	// swiper
	swiperInit();
	pageBanner();
	scrollToDiv();
	// New Delecare Js
	menuMobile.clickHambuger();
	header.clickSearch();
});
/*==================== Menu Mobile ====================*/
let menuMobile = {
	clickHambuger: function () {
		$(".hambuger").click(function () {
			$(this).toggleClass("active");
			$(".menu-mobile").toggleClass("active");
		});
	},
};
/*==================== JS Other ====================*/
function height(el) {
	var height = 0;
	$(el).each(function () {
		var thisHeight = $(this).height();
		if (thisHeight > height) {
			height = thisHeight;
		}
		setTimeout(() => {
			$(el).height(height);
		}, 100);
	});
}
let header = {
	scrollActive: function () {
		let height = $("header").height();
		if ($(window).scrollTop() > height) {
			$("header").addClass("active");
		} else {
			$("header").removeClass("active");
		}
	},
	clickSearch: function () {
		$(".search").click(function () {
			$(".wrap-search-main").addClass("active");
		});
		$(".close").click(function () {
			$(".wrap-search-main").removeClass("active");
		});
	},
};
function setBackgroundElement() {
	$("[setBackground]").each(function () {
		var background = $(this).attr("setBackground");
		var bgMobile = $(this).attr("setBackgroundMobile");
		var breakpoint = $(this).attr("breakpoint");
		if (typeof bgMobile != "undefined") {
			if ($(window).width() <= breakpoint) {
				$(this).css({
					"background-size": "cover",
					"background-position": "center center",
					"background-image": "url(" + bgMobile + ")",
				});
			} else {
				$(this).css({
					"background-size": "cover",
					"background-position": "center center",
					"background-image": "url(" + background + ")",
				});
			}
		} else {
			$(this).css({
				"background-size": "cover",
				"background-position": "center center",
				"background-image": "url(" + background + ")",
			});
		}
	});
	$("[setBackgroundRepeat]").each(function () {
		var background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat",
		});
	});
	// if ($(window).width() < 376) {
	// 	$("[setBackgroundMobile]").each(function () {
	// 		var backgroundMobile = $(this).attr("setBackgroundMobile");
	// 		$(this).css({
	// 			"background-image": "url(" + backgroundMobile + ")",
	// 			"background-size": "cover",
	// 			"background-position": "center center",
	// 		});
	// 	});
	// }
}
function mappingMenu() {
	let mainMenu = $("header .bottom-wrap .menu-list").mapping({
		mobileWrapper: "header .mobile-wrap",
		mobileMethod: "appendTo",
		desktopWrapper: "header .bottom-wrap",
		desktopMethod: "appendTo",
		breakpoint: 768,
	});
	let mainMenuTop = $("header .top-wrap .menu-list").mapping({
		mobileWrapper: "header .mobile-wrap",
		mobileMethod: "appendTo",
		desktopWrapper: "header .top-wrap .main-menu-top",
		desktopMethod: "appendTo",
		breakpoint: 768,
	});
	let searchBox = $("header .top-wrap .searchbox").mapping({
		mobileWrapper: "header .mobile-wrap",
		mobileMethod: "appendTo",
		desktopWrapper: "header .top-wrap .main-search",
		desktopMethod: "appendTo",
		breakpoint: 576,
	});
}
function swiperInit() {
	var bannerHome = new Swiper(".banner-home .swiper-container", {
		slidesPerView: 1,
		loop: true,
		effect: "fade",
		speed: 900,
		slidesPerColumnFill: "row",
		autoplay: {
			delay: 2500,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".banner-home .swiper-pagination",
			clickable: true,
		},
		navigation: {
			nextEl: ".banner-home .button-next",
			prevEl: ".banner-home .button-prev",
		},
	});
	var BannerHome2 = new Swiper(".home-2 .swiper-container", {
		slidesPerView: 1,
		loop: true,
		speed: 900,
		navigation: {
			nextEl: ".home-2 .button-next",
			prevEl: ".home-2 .button-prev",
		},
	});
}
function pageBanner() {
	var pageBanner = new Swiper(".pages-banner .swiper-container", {
		slidesPerView: 1,
		loop: true,
		autoplay: {
			delay: 3000,
		},
		lazy: true,
		parallax: true,
		speed: 300,
		effect: "fade",
	});
}
function scrollToDiv() {
	$(".pages-banner-arrow").on("click", function (event) {
		var hash = this.hash;
		$("html,body").animate(
			{
				scrollTop: $(".pages-banner").outerHeight(),
			},
			"slow"
		);
	});
}
$(document).on("scroll", function () {
	header.scrollActive();
});
