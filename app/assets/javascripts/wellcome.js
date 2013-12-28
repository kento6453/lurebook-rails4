/**
 * Created by kento on 13/12/26.
 */

function equalHeight(group) {
    tallest = 0;
    group.each(function() {
        thisHeight = $(this).height();
        if(thisHeight > tallest) {
            tallest = thisHeight;
        }
    });

    group.each(function() { $(this).height(tallest); });
}

$(window).load(function() {
    equalHeight($(".caption"));
})