$(document).ready(function() {
    $("#slide").skippr({
        transition : 'fade',
        speed : 1700,
        easing : 'easeOutQuart',
        navType : 'block',
        childrenElementType : 'div',
        arrows : false,
        autoPlay : true,
        autoPlayDuration : 1700,
        keyboardOnAlways : true,
        hidePrevious : true
    });
});