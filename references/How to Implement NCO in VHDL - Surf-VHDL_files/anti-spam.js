/*
Anti-spam plugin
No spam in comments. No captcha.
wordpress.org/plugins/anti-spam/
*/

"use strict";
(function() {
	jQuery(document).ready(function($) {
		var answer = $('.wantispam-control-a').val(),
			current_year = new Date().getFullYear(),
			dynamic_control = $('<input>');

		dynamic_control.attr('type', 'hidden');
		dynamic_control.attr('name', 'wantispam_d');
		dynamic_control.addClass('wantispam-control').addClass('wantispam-control-d');
		dynamic_control.val(current_year);

		$('.wantispam-required-fields').each(function() {
			if( !$(this).hasClass('wantispam-form-processed') ) {

				// hide inputs from users
				$('.wantispam-group', $(this)).hide();
				// set js support marker
				$('.wantispam-control-j', $(this)).val('on');
				// set answer into other input instead of user
				$('.wantispam-control-q', $(this)).val(answer);
				// clear value of the empty input because some themes are adding some value for all inputs
				$('.wantispam-control-e', $(this)).val('');

				$(this).append(dynamic_control.clone());
				$(this).addClass('wantispam-form-processed');
			}
		});
	});
})();