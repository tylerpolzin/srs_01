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
//= require jquery-ui
//= require jquery_ujs
//= require bootstrap-sprockets
//= require jquery.dataTables
//= require dataTables.bootstrap
//= require dataTables.responsive
//= require dataTables.colReorder
//= require dataTables.fixedHeader
//= require turbolinks
//= require_tree .
/*global $*/

$("document").ready(function() {
    
// Start Callsheets JS

    // Submit Button Dialog
    $( function() {
        $("#cs_submit").click(function() {
        $("#submitConfirm").dialog('open');
        return false;
        });
        $( "#submitConfirm" ).dialog({
              autoOpen: false,
              resizable: false,
              height: "auto",
              width: 400,
              modal: true,
              buttons: {
                "Submit": function() {
                  $( this ).dialog( "close" );
                  $("#cs_submit").submit();
                },
                Cancel: function() {
                  $( this ).dialog( "close" );
                }
              }
        });
    });

    // Datepicker Dropdown
    $(function() {
        $("#datepicker").datepicker({
            dateFormat: 'mm/dd/yy',
            altField: '#datepickerHidden',
            altFormat: 'yy-mm-dd'
        });
    });




    // Start Colonial Elegance JS
    $("#storeSelect option").filter(function() {
        return $(this).val() == $("#storeSelectHidden").val();
        }).attr('selected', true);
    $("#storeSelect").on("change", function() {
    $("#storeSelectHidden").val($(this).find("option:selected").attr("value"));
    });
    
    $('#millwork_manager').keyup(
        function() {
                $("#millwork_managerHidden").val($("#millwork_manager").val()).change();
    })
    $(':radio[name="ceSdc"]').change(
        function(){
            if ($(this).val() == "1") {
                $('#ceSdcHidden').val("Undamaged");
            }
            else {
                $('#ceSdcHidden').val("Damaged");
            }
    });
    $(':radio[name="ceBins"]').change(
        function(){
            if ($(this).val() == "1") {
                $('#ceBinsHidden').val("Undamaged");
            }
            else {
                $('#ceBinsHidden').val("Damaged");
            }
    });
    $(':radio[name="ceTv"]').change(
        function(){
            if ($(this).val() == "1") {
                $('#ceTvHidden').val("Yes");
            }
            else {
                $('#ceTvHidden').val("No");
            }
    });
    $(':radio[name="ceCloset"]').change(
        function(){
            if ($(this).val() == "1") {
                $('#ceClosetHidden').val("Undamaged");
            }
            else {
                $('#ceClosetHidden').val("Damaged");
            }
    });
    $(':radio[name="ceBarndoor"]').change(
        function(){
            if ($(this).val() == "1") {
                $('#ceBarndoorHidden').val("Undamaged");
            }
            if ($(this).val() == "2") {
                $('#ceBarndoorHidden').val("Damaged");
            }
            if ($(this).val() == "3") {
                $('#ceBarndoorHidden').val("Not Installed");
            }
    });
    $(':checkbox[name="ceLit-1"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#ceLit-1Hidden').val("Stair Parts Tearpads");
            }
            if ($(this).is(':not(:checked)')) {
                $('#ceLit-1Hidden').val("");
            }
    })
    $(':checkbox[name="ceLit-2"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#ceLit-2Hidden').val("Closet Door Brochures");
            }
            if ($(this).is(':not(:checked)')) {
                $('#ceLit-2Hidden').val("");
            }
    })
    $(':checkbox[name="ceLit-3"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#ceLit-3Hidden').val("Column Tearpads");
            }
            if ($(this).is(':not(:checked)')) {
                $('#ceLit-3Hidden').val("");
            }
    })
    $('#ceNotes').keyup(
        function() {
                $("#ceNotesHidden").val($("#ceNotes").val()).change();
    })
    

    // End Colonial Elegance JS
    
    
    // Start Genie JS
    
    
    $(':checkbox[name="genieSku4251691"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#genieSku4251691Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#genieSku4251691Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="genieSku4251689"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#genieSku4251689Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#genieSku4251689Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="genieSku4252547"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#genieSku4252547Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#genieSku4252547Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="genieSku4252548"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#genieSku4252548Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#genieSku4252548Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="genieSku4254040"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#genieSku4254040Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#genieSku4254040Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="genieSku4251720"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#genieSku4251720Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#genieSku4251720Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="genieSku4252388"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#genieSku4252388Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#genieSku4252388Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="genieSku4252445"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#genieSku4252445Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#genieSku4252445Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="genieSku4252391"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#genieSku4252391Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#genieSku4252391Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="genieSku4251685"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#genieSku4251685Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#genieSku4251685Hidden').val("Out of Stock, Remove from Callsheet!");
            }
    })
    $('#genieNotes').keyup(
        function() {
                $("#genieNotesHidden").val($("#genieNotes").val()).change();
    })
    
    
    // End Genie JS
    
    
    // Start Honeywell JS
    
    $('#plumbing_manager').keyup(
        function() {
                $("#plumbing_managerHidden").val($("#plumbing_manager").val()).change();
    })
    $(':checkbox[name="hwSku3351566"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3351566Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3351566Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3351579"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3351579Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3351579Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku6360310"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku6360310Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku6360310Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku6360320"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku6360320Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku6360320Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku6360325"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku6360325Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku6360325Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku6360328"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku6360328Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku6360328Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3351813"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3351813Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3351813Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3351830"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3351830Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3351830Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3351832"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3351832Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3351832Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3351833"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3351833Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3351833Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku6360205"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku6360205Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku6360205Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku6360210"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku6360210Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku6360210Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku6360220"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku6360220Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku6360220Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku6360150"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku6360150Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku6360150Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku6360200"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku6360200Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku6360200Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3351837"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3351837Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3351837Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3351779"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3351779Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3351779Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3351885"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3351885Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3351885Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3351785"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3351785Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3351785Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3351798"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3351798Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3351798Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3351879"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3351879Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3351879Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3351895"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3351895Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3351895Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3352001"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3352001Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3352001Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3352014"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3352014Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3352014Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3352027"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3352027Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3352027Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku3352030"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku3352030Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku3352030Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku6399948"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku6399948Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku6399948Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku6399949"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku6399949Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku6399949Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku6399978"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku6399978Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku6399978Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwSku6399979"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwSku6399979Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwSku6399979Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="hwLit1"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwLit1Hidden').val("Thermostat Brochures");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwLit1Hidden').val("");
            }
    })
    $(':checkbox[name="hwLit2"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#hwLit2Hidden').val("Indoor Air Quality Brochures");
            }
            if ($(this).is(':not(:checked)')) {
                $('#hwLit2Hidden').val("");
            }
    })
    $('#hwNotes').keyup(
        function() {
                $("#hwNotesHidden").val($("#hwNotes").val()).change();
    })
    
    
    // End Honeywell JS
    
    
    // Start Summit JS
    
    
    $(':checkbox[name="summitSku6471315"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6471315Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6471315Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6471317"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6471317Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6471317Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6471323"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6471323Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6471323Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6471320"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6471320Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6471320Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6471321"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6471321Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6471321Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6471330"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6471330Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6471330Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6471333"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6471333Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6471333Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6471305"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6471305Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6471305Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6471322"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6471322Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6471322Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6471302"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6471302Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6471302Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6473100"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6473100Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6473100Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6471335"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6471335Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6471335Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6471325"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6471325Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6471325Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6473918"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6473918Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6473918Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6473917"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6473917Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6473917Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6473900"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6473900Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6473900Hidden').val("Out of Stock");
            }
    })
    $(':checkbox[name="summitSku6473136"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#summitSku6473136Hidden').val("In Stock");
            }
            if ($(this).is(':not(:checked)')) {
                $('#summitSku6473136Hidden').val("Out of Stock");
            }
    })
    $('#summitNotes').keyup(
        function() {
                $("#summitNotesHidden").val($("#summitNotes").val()).change();
    })
    
    
    // End Summit JS
    
    
    // Start All Stone and Tuscany JS
    
    
    $(':checkbox[name="allstoneLit"]').change(
        function(){
            if ($(this).is(':checked')) {
                $('#allstoneLitHidden').val("All Stone Brochures");
            }
            if ($(this).is(':not(:checked)')) {
                $('#allstoneLitHidden').val("");
            }
    })
    $('#allstoneNotes').keyup(
        function() {
                $("#allstoneNotesHidden").val($("#allstoneNotes").val()).change();
    })
    $('#tuscanyNotes').keyup(
        function() {
                $("#tuscanyNotesHidden").val($("#tuscanyNotes").val()).change();
    })
    
    
    // End All Stone and Tuscany JS
    
// End Callsheets JS

    }) // (document).ready Endpoint