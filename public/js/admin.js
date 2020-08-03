(function($){
	var updateMenu = function(e) {
		var list   = e.length ? e : $(e.target)
		$.post('/admin-menu', 
			JSON.stringify(list.nestable('serialize')),
			function(data) {
            	console.log(data);
        	}
        );

        /*$.ajax({
            url: '/admin-menu',
            type: 'PUT',
            dataType: 'application/json',
            data: JSON.stringify(list.nestable('serialize'))
        }).done(function(data) {
            console.log(data);
        });*/

		/*$.ajax({  
            url: '/admin-menu',
            type: 'PUT',  
            dataType: 'json',
            headers: {
	            "Content-Type": "application/json"
	        },
            data: JSON.stringify(list.nestable('serialize')),
            success: function (data, textStatus, xhr) {  
                console.log(data);
            },
            error: function (xhr, textStatus, errorThrown) {
                console.log('Error in Operation');
            }
        });*/
	}
	$('#nestable1').nestable({
        group: 1,
        maxDepth: 2
    }).on('change', updateMenu);
})(jQuery)