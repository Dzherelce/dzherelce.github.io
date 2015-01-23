
$(document).ready(function() {

    var nextBG = function() {
        var imgArray = ['bg1.jpg',
                        'bg2.jpg',
                        'bg3.jpg',
                        'bg4.jpg',
                        'bg5.jpg'
                       ];

        return "url(/assets/images/bg/" + imgArray[Math.floor(Math.random() * imgArray.length)] + ")";
    }

    $('#headerwrap').css("background-image", nextBG);

    setInterval(function(){
        $('#headerwrap').fadeOut('slow', function() {
            $(this).css("background-image", nextBG() ).fadeIn('slow'); })
    }, 3000); // 3 second interval
});
