$(document).on('turbolinks:load', function () {
    $("#slide1").skippr({
        transition : 'fade',
        speed : 2500,
        easing : 'easeOutQuart',
        navType : 'bubble',
        childrenElementType : 'div',
        arrows : false,
        autoPlay : true,
        autoPlayDuration : 3000,
        keyboardOnAlways : true,
        hidePrevious : false
    });
    $("#slide2").skippr({
        transition : 'fade',
        speed : 2500,
        easing : 'easeOutQuart',
        navType : 'bubble',
        childrenElementType : 'div',
        arrows : false,
        autoPlay : true,
        autoPlayDuration : 3000,
        keyboardOnAlways : true,
        hidePrevious : false
    });
});