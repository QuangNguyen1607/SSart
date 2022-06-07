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
	checkscroll();
	scrollDown();
	TabTacPham();
	wrapHrefTacPham();
	selectTabSlide();
	AppendTitle();
	clickAjaxMenu();
	MainMenuMobile();
	CheckClickSub();
});
/*==================== Check click popup ====================*/
function CheckClickSub() {
	$(".form-pinned-sub .close").click(function () {
		$(this).toggleClass("active");
		$(this).closest(".form-pinned-sub").toggleClass("active");
	});
}
/*==================== MainMenuMobile ====================*/
function MainMenuMobile() {
	$("header .dropdown a").click(function (e) {
		var t = $(this).closest(".dropdown").find(".list-dropdown");
		$(this)
			.closest(".dropdown")
			.siblings()
			.find(".list-dropdown")
			.slideUp();
		$(this)
			.closest(".dropdown")
			.siblings()
			.find(".list-dropdown")
			.removeClass("active");
		if (t.hasClass("active")) {
			return true;
		} else {
			t.slideDown();
			t.addClass("active");
		}
		return false;
	});
}
/*==================== Click Ajax ====================*/
function clickAjaxMenu() {
	$("body").on("click", "a.ajaxlink", function (e) {
		e.preventDefault();
		ProcessAjax($(this).attr("href"));
		return false;
	});
}
function ProcessAjax(pageurl) {
	//to get the ajax content and display in div with id 'content'
	$.ajax({
		url: pageurl,
		data: {
			isajax: false,
		},
		success: function (data) {
			$(".ajaxRespon").html($(data).find(".ajaxRespon").html());
			$(".ajaxSelect").html($(data).find(".ajaxSelect").html());
			$(".pagination").html($(data).find(".pagination").html());
			if ($(data).find(".pagination").length > 0) {
				$(".pagination").html($(data).find(".pagination").html());
			} else {
				$(".pagination").html("");
			}
		},
	});

	//to change the browser URL to 'pageurl'
	if (pageurl != window.location) {
		window.history.pushState({ path: pageurl }, "", pageurl);
	}
}
/*==================== Append Title ====================*/
function AppendTitle() {
	if ($(".page-trung-bay-chi-tiet").length > 0) {
		let textVal = $(".itemcrumb.active span").text();
		$(".page-trung-bay-chi-tiet .title-page-big").text(textVal);
	}
}
/*==================== Select tab silde home ====================*/
function selectTabSlide() {
	$(".select-st-1").change(function () {
		var selectedVal = $(".select-st-1 option:selected").val();
		let result = "#" + selectedVal;
		$(result).addClass("active").siblings().removeClass("active");
	});
}
/*==================== Tab Tác Phẩm ====================*/
function TabTacPham() {
	$(".box-tac-pham a").click(function () {
		let hash = this.hash;
		$(".box-detail-tac-pham").not(hash).removeClass("active");
		$(hash).addClass("active");
		return false;
	});
	$(".close-button").click(function () {
		$(".box-detail-tac-pham").removeClass("active");
	});
}
/*==================== Auto Wrap Href ====================*/
function wrapHrefTacPham() {
	$(".content-main img").each(function () {
		let src = $(this).attr("src");
		$(this).wrap('<a href="' + src + '" data-fancybox></a>');
	});
}
/*==================== Next Section ====================*/
function scrollDown() {
	$(".next-section").click(function () {
		var $nextElement = $(this).parents("section").next();
		if ($nextElement.length) {
			$("html, body").stop(true).animate(
				{
					scrollTop: $nextElement.offset().top,
				},
				800
			);
		}
		return false;
	});
}
/*==================== Scorll down ====================*/
function checkscroll() {
	var lastScrollTop = 0;
	$(window).scroll(function (event) {
		var checkScroll = $(this).scrollTop();
		let heightHeader = $("header").outerHeight();
		if (checkScroll > heightHeader) {
			if (checkScroll > lastScrollTop) {
				$("header").addClass("scroll-menu");
			} else {
				$("header").removeClass("scroll-menu");
			}
			lastScrollTop = checkScroll;
		}
	});
}
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
	let MainMenu = $(
		"header nav .wrap-menu-right .bottom-menu .main-menu"
	).mapping({
		mobileWrapper: "header nav .menu-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: "header nav .wrap-menu-right .bottom-menu",
		desktopMethod: "prependTo",
		breakpoint: 1280,
	});
	let searchBox = $(
		"header nav .wrap-menu-right .top-menubar .search"
	).mapping({
		mobileWrapper: "header nav .wrap-menu-right .hambuger",
		mobileMethod: "insertBefore",
		desktopWrapper: "header nav .wrap-menu-right .top-menubar",
		desktopMethod: "prependTo",
		breakpoint: 1280,
	});
	let Social = $(
		"header nav .wrap-menu-right .top-menubar .wrap-social"
	).mapping({
		mobileWrapper: "header nav .menu-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: "header nav .wrap-menu-right .top-menubar ",
		desktopMethod: "appendTo",
		breakpoint: 1280,
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
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		},
		speed: 900,
		navigation: {
			nextEl: ".home-2 .button-next",
			prevEl: ".home-2 .button-prev",
		},
	});
	var ngheSiTacPham = new Swiper(".tab-nghe-si-tac-pham", {
		slidesPerView: 1,
		loop: true,
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		},
		speed: 900,

		breakpoints: {
			768: {
				slidesPerView: 2,
				spaceBetween: 30,
			},
			1280: {
				slidesPerView: 3,
				spaceBetween: 30,
			},
		},
	});
	var ngheSiTacPham2 = new Swiper(".content-nghe-si-tac-pham", {
		slidesPerView: 1,
		speed: 900,
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: ".box-detail-tac-pham .button-next",
			prevEl: ".box-detail-tac-pham .button-prev",
		},
	});
	var BannerHome2 = new Swiper(".box-detail-tac-pham .swiper-container", {
		slidesPerView: 1,
		speed: 900,
		navigation: {
			nextEl: ".content-nghe-si-tac-pham .button-next",
			prevEl: ".content-nghe-si-tac-pham .button-prev",
		},
	});

	var tinTucOther = new Swiper(".tin-tuc-other .swiper-container", {
		slidesPerView: 1,
		spaceBetween: 30,
		speed: 900,
		navigation: {
			nextEl: ".tin-tuc-other .button-next",
			prevEl: ".tin-tuc-other .button-prev",
		},
		breakpoints: {
			768: {
				slidesPerView: 2,
				spaceBetween: 30,
			},
			1280: {
				slidesPerView: 3,
				spaceBetween: 30,
			},
		},
	});
	$(".home-3 .wrap-slide-tab").each(function (index) {
		$(this).addClass("slide-product-" + index);
		new Swiper(".slide-product-" + index + " .swiper-container", {
			slidesPerView: 1,
			spaceBetween: 30,
			observer: true,
			observeParents: true,
			speed: 900,
			navigation: {
				nextEl: ".slide-product-" + index + " .button-next",
				prevEl: ".slide-product-" + index + " .button-prev",
			},
			breakpoints: {
				500: {
					slidesPerView: 2,
					spaceBetween: 20,
				},
				768: {
					slidesPerView: 3,
					spaceBetween: 30,
				},
				1280: {
					slidesPerView: 4,
					spaceBetween: 30,
				},
			},
		});
	});
	$(".wrap-slide-section").each(function (index) {
		$(this).addClass("slide-gallery-" + index);
		new Swiper(".slide-gallery-" + index + " .swiper-container", {
			slidesPerView: 1,
			spaceBetween: 30,
			speed: 900,
			navigation: {
				nextEl: ".slide-gallery-" + index + " .button-next",
				prevEl: ".slide-gallery-" + index + " .button-prev",
			},
			breakpoints: {
				500: {
					slidesPerView: 2,
					spaceBetween: 20,
				},
				768: {
					slidesPerView: 3,
					spaceBetween: 30,
				},
				1280: {
					slidesPerView: 4,
					spaceBetween: 30,
				},
			},
		});
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
