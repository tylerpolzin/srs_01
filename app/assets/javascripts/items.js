/*global $*/
document.addEventListener("turbolinks:load", function() {$(function() {
// START New Item JS

    var vendor = ['Tuscany', 'Ray Padula', 'Colonial Elegance', 'Dr Sharp',
                    'Momentum', 'Turn of the Century', 'Other...'];
    $(function(){
      $('#vendorSelect')
        .html('<option>' + vendor.join('</option><option>') + '</option>');
      $('#vendorSelect').change(function() {
        if ($(this).val() == "Other...") {
          $('#vendorHidden').val('Enter Vendor Here');
          $('#vendorSelect').addClass('dis-bg');
          $('#vendorHidden').removeClass('hidden');
        }
        else
          $('#vendorHidden').addClass('hidden');
          $('#vendorSelect').removeClass('dis-bg');
          $('#vendorHidden').val($('#vendorSelect').val());
      });
    });
    

// START Item Edit JS

    var pounds = "0";
    var ounces = "0";
    $(function(){
      $('#weightPounds').keyup(function() {
          pounds = $(this).val();
          if ($(this).val().length === 0 ) {
            pounds = "0";
            $('#joinedWeight').val(pounds+" lbs. "+ounces+" oz.");
          }
          else
            $('#joinedWeight').val(pounds+" lbs. "+ounces+" oz.");
      });
      $('#weightOunces').keyup(function() {
          ounces = $(this).val();
          if ($(this).val().length === 0 ) {
            ounces = "0";
            $('#joinedWeight').val(pounds+" lbs. "+ounces+" oz.");
          }
          else
            $('#joinedWeight').val(pounds+" lbs. "+ounces+" oz.");
      });
      
    });


});}); // turbolinks and document-ready Endpoint