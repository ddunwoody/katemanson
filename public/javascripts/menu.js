$(function() {
    $("table.menu td:not(.current)").hover(function() {
        $(this).addClass("hover");
    },function(){
        $(this).removeClass("hover");
    });
});

