if (typeof jQuery !== 'undefined') {
	(function($) {

		// application code here
		

		// generic confirm dialog for any button that is used to delete a record
		$(function(){
			$('.delete').click(function(e){
				return ( confirm("Are you sure you want to delete this record?") );
			});
		});

	})(jQuery);
}
