(function() {
	var $urls = $('#urls'),
		$list = $('section .list'),
		urlRegEx = /http(s)?\:\/\/(www.)?instagram\.com\/p\/[A-Za-z0-9]+/gim;

	$urls.on('blur', function() {
		var value = this.value;
		var urls = (typeof value === 'string' && value.match(urlRegEx) || []);

		if (urls && urls.length > 0) {
			$.getJSON('/images', {urls: urls}, function(response) {
				if (response && response.length > 0) {
					$.each(response, function(i, o) {
						$list.append($('img').attr('src', o));
					});
				}
			});
		}
	});
})();
