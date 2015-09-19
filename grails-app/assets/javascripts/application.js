// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require_tree .
//= require_self
//= require bootstrap
//= require ../vendor/js/application
//= require ../vendor/js/bootstrap-affix
//= require ../vendor/js/bootstrap-alert
//= require ../vendor/js/bootstrap-button
//= require  ../vendor/js/bootstrap-carousel
//= require ../vendor/js/bootstrap-collapse
//= require ../vendor/js/bootstrap-dropdown
//= require ../vendor/js/bootstrap-modal
//= require ../vendor/js/bootstrap-tooltip
//= require ../vendor/js/bootstrap-popover
//= require ../vendor/js/bootstrap-scrollspy
//= require ../vendor/js/bootstrap-tab
//= require ../vendor/js/bootstrap-transition



if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}
