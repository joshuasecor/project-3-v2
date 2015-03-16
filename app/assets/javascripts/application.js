// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

$(document).ready(function(){
	var lasttrainer= $("div.trainerpics div.indtrainer>div:last")[0];
	var mydiv= $("div.trainerpics div.indtrainer")[0];
	$("#rightarrow").click(function() {
		var right= mydiv.style.right;
		if (parseInt(right.replace("px", ""))>=((lasttrainer.offsetLeft + lasttrainer.clientWidth) - mydiv.parentElement.clientWidth))
		{
			mydiv.style.right = ("0px");
		}
		else {
			$(".indtrainer").animate({
	   		right: "+=320"
	 		}, 200, function() {
	   // Animation complete.
	 		});
			if (nextPhoto.length === 0) {
		  	nextPhoto = $('.slider_item').first();
			}
		}


	});
	$("#leftarrow").click(function() {
		console.log('click!');
		var right= mydiv.style.right;
		if (parseInt(right.replace("px", ""))<=0 )
		{
			mydiv.style.right = (((lasttrainer.offsetLeft + lasttrainer.clientWidth) - mydiv.parentElement.clientWidth).toString() + "px");
		}
		else {
			$(".indtrainer").animate({
		   right: "-=400"
		 }, 200, function() {
		   // Animation complete.
		 });
		}
	});

})
