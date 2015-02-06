// index.js
var string = "<div data-reveal class='reveal-modal custom-modal'><%= escape_javascript(render 'show')%><a class='close-reveal-modal'>&#215;</a></div>";

$(string).foundation().foundation('reveal', 'open');