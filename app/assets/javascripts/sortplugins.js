jQuery.fn.dataTableExt.oSort['numeric-comma-asc']  = function(a,b) {
    var x = (a == "-") ? 0 : a.replace( /,/, "." ).replace( /[^\d\-]/g, "" );
    var y = (b == "-") ? 0 : b.replace( /,/, "." ).replace( /[^\d\-]/g, "" );
    x = parseFloat( x );
    y = parseFloat( y );
    return ((x < y) ? -1 : ((x > y) ?  1 : 0));
};
 
jQuery.fn.dataTableExt.oSort['numeric-comma-desc'] = function(a,b) {
    var x = (a == "-") ? 0 : a.replace( /,/, "." ).replace( /[^\d\-]/g, "" );
    var y = (b == "-") ? 0 : b.replace( /,/, "." ).replace( /[^\d\-]/g, "" );
    x = parseFloat( x );
    y = parseFloat( y );
    return ((x < y) ?  1 : ((x > y) ? -1 : 0));
};
