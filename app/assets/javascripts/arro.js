/**	STYLE SWITCHER
 *************************************************** **/
jQuery(document).ready(function() {
    "use strict";

    jQuery("#hideSwitcher, #showSwitcher").click(function () {

        if (jQuery("#showSwitcher").is(":visible")) {

            var _identifier = "#showSwitcher";
            jQuery("#switcher").animate({"margin-left": "0px"}, 500).show();
            createCookie("switcher_visible", 'true', 365);

        } else {

            var _identifier = "#switcher";
            jQuery("#showSwitcher").show().animate({"margin-left": "0"}, 500);
            createCookie("switcher_visible", 'false', 365);

        }

        jQuery(_identifier).animate({"margin-left": "-500px"}, 500, function () {
            jQuery(this).hide();
        });

    });

});

function createCookie(name,value,days) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime()+(days*24*60*60*1000));
        var expires = "; expires="+date.toGMTString();
    } else {
        expires = "";
    }	document.cookie = name+"="+value+expires+"; path=/";
}

function readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];

        while (c.charAt(0)==' ') {
            c = c.substring(1,c.length);
        }

        if (c.indexOf(nameEQ) == 0) {
            return c.substring(nameEQ.length,c.length);
        }
    }

    return null;
}


/** ********************************************************************************************************** **/
/** ********************************************************************************************************** **/
/** ********************************************************************************************************** **/

/**
 @ON LOAD
 **/
window.onload = function(e) {

    // COLOR SCHEME
    var cookie = readCookie("style");
    var title = cookie ? cookie : getPreferredStyleSheet();
    setActiveStyleSheet(title);

    // SWITCHER OPEN|CLOSED
    var switcher_visible = readCookie('switcher_visible');
    if(switcher_visible != 'false') {
        jQuery("#showSwitcher").trigger('click');
    }
}