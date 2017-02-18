// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require jquery-fileupload
//= require jquery-fileupload/jquery-ui
//= require jquery.dataTables
//= require bootstrap-sprockets
//= require best_in_place
//= require best_in_place.jquery-ui
//= require best_in_place.purr
//= require dataTables.bootstrap
//= require dataTables.responsive
//= require dataTables.colReorder
//= require dataTables.fixedHeader
//= require jquery.purr
//= require twitter/bootstrap/rails/confirm
//= require underscore
//= require jquery.doubleScroll
//= require gmaps/google
//= require turbolinks
//= require_tree .
/*global $*/
/*global sphone*/

document.addEventListener("turbolinks:load", function() {$(function() {
    
    $(document).ready(function() {
      /* Activating Best In Place */
      $(".best_in_place").best_in_place();
    });
    
    $('.tag-tooltip').tooltip({
      trigger: 'hover'
    }); 

    $('#datatable-basic').DataTable( {
      "scrollX": true,
      "aLengthMenu": [[5, 10, 25, 50, 100, -1], [5, 10, 25, 50, 100, "All"]],
      "pageLength": 100
    });
    // $('body').find('.dataTables_scroll').wrap('<div id="scroll_div"></div>');
    // $('#scroll_div').doubleScroll();
    
    
    
    // Phone Selector
    var phone = $('.phone');
    $('.phone').on('keypress', function(e) {
      var key = e.charCode || e.keyCode || 0;
      if (phone.val().length === 0) {phone.val(phone.val() + '(');}
      if (key !== 8 && key !== 9) {
        if (phone.val().length === 4) {phone.val(phone.val() + ')');}
        if (phone.val().length === 5) {phone.val(phone.val() + ' ');}
        if (phone.val().length === 9) {phone.val(phone.val() + '-');}
        if (phone.val().length >= 14) {phone.val(phone.val().slice(0, 13));}}
      return (key == 8 ||   key == 9 ||   key == 46 ||
             (key >= 48 && key <= 57)||  (key >= 96 && key <= 105));})
    .on('focus', function() {
      phone = $(this);
      if (phone.val().length === 0) {phone.val('(');}
      else {var val = phone.val();
        phone.val('').val(val);}})
    .on('blur', function() {
      sphone = $(this);
      if (sphone.val() === '(') {sphone.val('');}});
    





});}); // turbolinks and document-ready Endpoint