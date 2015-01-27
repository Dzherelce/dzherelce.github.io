    function setInlineImageHeight() {
        var nav_height = $("#navbar-main").children().first().children().first().height();
        var bodyheight = $(window).height();
        var bodywidth = $(window).width();
        $(".inline-image img").each(
            function() {
                $(this).css({"max-height": ((bodyheight - nav_height)* 0.9)});
                $(this).css({"max-width": (bodywidth * 0.9)});
                console.log(this.height);
            }
        );
    }
$(document).ready(function() {
    setInlineImageHeight();
});

$(window).resize(function() {
    setInlineImageHeight();
});
