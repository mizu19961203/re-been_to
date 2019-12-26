$(document).ready(function() {
    $("#slide").skippr({
        transition : 'fade',
        speed : 1800,
        easing : 'easeOutQuart',
        navType : 'block',
        childrenElementType : 'div',
        arrows : false,
        autoPlay : true,
        autoPlayDuration : 1800,
        keyboardOnAlways : true,
        hidePrevious : true
    });
});