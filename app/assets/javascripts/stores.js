/* global $*/
document.addEventListener("turbolinks:load", function() {$(function() {
//-----------------------------------------------------------------------------------
//          START Store Edit JS                                                     |
//-----------------------------------------------------------------------------------
  $(function() {
    $('#storeProto option').filter(function() {
      return $(this).val() == ($('#storeProto').attr('proto_id'));
    }).attr('selected', true);
  });
  $(function() {
    $('#repSelect option').filter(function() {
      return $(this).attr('user_id') == ($('#repSelectHidden').val());
    }).attr('selected', true);
  });
  $(function() {
    $("#repSelect option").filter(function() {
          return $(this).val() == $("#repSelectHidden").val();
          }).attr('selected', true);
      $("#repSelect").on("change", function() {
      $("#repSelectHidden").val($(this).find("option:selected").attr("user_id"));
    });
  });
//-----------------------------------------------------------------------------------
//          START Territory Map JS                                                  |
//-----------------------------------------------------------------------------------

});}); // turbolinks and document-ready Endpoint