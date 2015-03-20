
$(document).ready(function() {

    var currentIdx = 0;
    var imgArray = $("#backgrounds img").map(function() {
        return $(this).attr("src");
    }).get();

    $('#headerwrap').backstretch(imgArray, {duration: 3000, fade: 1500});

});
