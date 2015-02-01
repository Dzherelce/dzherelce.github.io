
$(document).ready(function() {

    var currentIdx = 0;
    var imgArray = $("#backgrounds img").map(function() {
        return $(this).attr("src");
    });

    var nextBG = function() {
        currentIdx++;
        if (currentIdx == imgArray.length) { currentIdx = 0 }
        return "url(" + imgArray[currentIdx] + ")";
    }

    $('#headerwrap').css("background-image",  "url(" + imgArray[0] + ")");

    setInterval(function(){
        $('#headerwrap').fadeOut('slow', function() {
            $(this).css("background-image", nextBG() ).fadeIn('slow'); })
    }, 3000); // 3 second interval
});
