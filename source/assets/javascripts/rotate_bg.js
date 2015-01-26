
$(document).ready(function() {

    var nextBG = function() {
        var imgArray = $("#backgrounds img").map(function() {
            return $(this).attr("src");
        });

        return "url(" + imgArray[Math.floor(Math.random() * imgArray.length)] + ")";
    }

    $('#headerwrap').css("background-image", nextBG);

    setInterval(function(){
        $('#headerwrap').fadeOut('slow', function() {
            $(this).css("background-image", nextBG() ).fadeIn('slow'); })
    }, 3000); // 3 second interval
});
