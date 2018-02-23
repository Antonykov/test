$(function() {
    var pull 		= $('#pull');
    menu 		= $('#navbar ul');
    menuHeight	= menu.height();

    $(pull).on('click', function(e) {
        e.preventDefault();
        menu.slideToggle();
    });
});

$(window).resize(function(){
    var w = $(window).width();
    if(w > 320 && menu.is(':hidden')) {
        menu.removeAttr('style');
    }
});

$(function(){
    $("#menu2").click(function(){
        $("#leftSidebar").css(
            {"position" : "relative"});
    });
});
$(function(){
    $("#closebutton").click(function(){
        $("#leftSidebar").css(
            {"position" : "absolute"});
    });
});
