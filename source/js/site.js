function equalHeight(group) {
    tallest = 0;
    group.each(function() {
        thisHeight = $(this).height();
        if(thisHeight > tallest) {
            tallest = thisHeight;
        }
    })
    group.each(function() { $(this).height(tallest + 200); });
}

$(document).ready(function() {
    equalHeight($(".thumbnails li"));
});
