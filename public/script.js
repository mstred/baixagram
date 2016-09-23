(function() {
	var $urls = $('#urls'),
		$list = $('section .list'),
		urlRegEx = /http(s)?\:\/\/(www.)?instagram\.com\/p\/[A-Za-z0-9_-]+/gim;

	$urls.on('blur', function() {
		var value = this.value;
		var urls = (typeof value === 'string' && value.match(urlRegEx) || []);

		$list.empty();

		if (urls && urls.length > 0) {
			$.getJSON('/images', {urls: urls}, function(response) {
				if (response && response.length > 0) {
					$list.append($.map(response, function(o) {
						return $('<img>').attr({src: o, class: 'block instant'});
					}));
				}
			});
		}
	});
})();
