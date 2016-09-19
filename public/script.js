(function() {
	var $urls = $('#urls'),
		$list = $('section .list'),
		urlRegEx = /http(s)?\:\/\/(www.)?instagram\.com\/p\/[A-Za-z0-9]+/gim;

	$urls.on('blur', function() {
		var value = this.value;
		var urls = (typeof value === 'string' && value.match(urlRegEx) || []);

		if (urls && urls.length > 0) {
			$.getJSON('/images', {urls: urls}, function(response) {
				console.log(response);
			});
		}
	});
})();
