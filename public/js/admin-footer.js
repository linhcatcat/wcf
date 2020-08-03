(function($){
    var updateMenuFooter = function(e) {
        var list   = e.length ? e : $(e.target)
        $.post('/admin-menu-footer', 
            JSON.stringify(list.nestable('serialize')),
            function(data) {
                console.log(data);
            }
        );
    }
    $('#nestable2').nestable({
        group: 1,
        maxDepth: 2
    }).on('change', updateMenuFooter);
})(jQuery)