$ = function(id) { return document.getElementById(id); };

$('urls').oninput = function() {
    document.getElementsByTagName('footer')[0].textContent = $('urls').value;
};
