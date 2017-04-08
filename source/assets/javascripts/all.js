//= require jquery.min
//= require modernizr.custom
//= require bootstrap.min
//= require retina
//= require jquery.easing.1.3
//= require smoothscroll
//= require rotate_bg
//= require resize_inline_image
//= require google_analytics
//= require jquery.backstretch.min
$(document).ready(function() {



});

function runSlideShow (slideshow_name) {
    var viewer = $('#' + slideshow_name + "_view")

    var imgArray = $("#" + slideshow_name + "_list img").map(function() {
        return $(this).attr("src");
    }).get();

    viewer.show();
    viewer.backstretch(imgArray, {duration: 2000, fade: 1500});
};

function stopSlideShow (slideshow_name) {
    var viewer = $('#' + slideshow_name + "_view")
    viewer.hide();
    viewer.backstretch("destroy");
}
