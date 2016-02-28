(function() {
	var $urls = $('#urls'),
		$list = $('section .list'),
		instamatic = function(value) {
			console.log(value);
		}
		onInputChange = function() {
			instamatic(this.value);
		};

	$urls.on('input', onInputChange);
})();
