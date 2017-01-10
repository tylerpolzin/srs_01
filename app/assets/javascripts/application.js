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

document.addEventListener("turbolinks:load", function() {$(function() {
    
    $('#datatable-basic').DataTable( {
      "scrollX": true,
      "aLengthMenu": [[25, 50, 100, -1], [25, 50, 100, "All"]],
      "pageLength": 100
    });


// START Store Info JS
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
  
  // START New Callsheet Query
    $(function() {
        $("#newCallsheet").click(function() {
        $("#startNewCallsheet").dialog('open');
        return false;
        });
        $( "#startNewCallsheet" ).dialog({closeText: "x", closeOnEscape: true, autoOpen: false, resizable: false, height: "auto", width: 400, modal: true,
              buttons: {
                "Start": function() {
                  $( this ).dialog( "close" );
                  $("#newCallsheet").submit();
                },
                Cancel: function() {
                  $( this ).dialog( "close" );
                }
              }
        });
    });
  
// END Store Info JS
// START Callsheet Dashboard JS



    var genieskus = ['1691', '1689', '2547', '2548', '4040',
                     '1720', '2388', '2445', '2391'];

    var hwskus = ['3351566', '3351579', '6360310', '6360320', '6360325',
                  '6360328', '3351813', '3351830', '3351832', '3351833',
                  '6360205', '6360210', '6360220', '6360150', '6360200',
                  '3351837', '3351779', '3351885', '3351785', '3351798',
                  '3351879', '3351895', '3352001', '3352014', '3352027',
                  '3352030', '6399948', '6399949', '6399978', '6399979'];

    var summitskus = ['1315', '1317', '1323', '1320', '1321', '1330',
                      '1333', '1305', '1322', '1302', '3100', '1335',
                      '1325', '3918', '3917', '3900', '3136'];

    var notes = ['ce', 'genie', 'hw', 'summit', 'allstone', 'tuscany'];
                      
    $("#newStoreSelect option").filter(function() {
        return $(this).val() == $("#newStoreSelectHidden").val();
        }).attr('selected', true);
    $("#newStoreSelect").on("change", function() {
        $("#newStoreSelectHidden").val($(this).find("option:selected").attr("value"));
    });

    $("#newStoreSelect option").filter(function() {
        return $(this).attr("name") == $("#newStoreNameHidden").val();
        }).attr('selected', true);
    $("#newStoreSelect").on("change", function() {
        $("#newStoreNameHidden").val($(this).find("option:selected").attr("name"));
    });

    $("#newStoreSelect option").filter(function() {
        return $(this).attr("abbrv") == $("#newStoreAbbrvHidden").val();
        }).attr('selected', true);
    $("#newStoreSelect").on("change", function() {
        $("#newStoreAbbrvHidden").val($(this).find("option:selected").attr("abbrv"));
    });

    $("#newStoreSelect option").filter(function() {
        return $(this).attr("yard") == $("#newStoreNumberHidden").val();
        }).attr('selected', true);
    $("#newStoreSelect").on("change", function() {
        $("#newStoreNumberHidden").val($(this).find("option:selected").attr("yard"));
    });

    $('#loadPendingCallsheet').click(function() {
        window.location = "callsheets/"+ $('#storeEditSelect').find("option:selected").val() +"/edit";
    });
    $('#loadSubmittedCallsheet').click(function() {
        window.location = "callsheets/"+ $('#storeCompleteSelect').find("option:selected").val();
    });
// END Callsheet Dashboard JS
// START Callsheets 'SHOW' JS
  // START Colonial Elegance 'SHOW' JS
    // Manager on Duty
    $(function(){
      if ($('#millwork_managerHidden').val() == "")
        ($('#showCeMgr').append('None Indicated'));
      else
        $('#showCeMgr').append($('#millwork_managerHidden').val());
    });
    // Display & POP Condition
    var ceDamages = [];
    $(function(){
      if ($('#ceSdcHidden').val() == "Undamaged")
        ceDamages.push(['Stair Displays (OK)']);
      if ($('#ceSdcHidden').val() == "Damaged")
        ceDamages.push(['Stair Displays (DAMAGED)']);
        
      if ($('#ceBinsHidden').val() == "Undamaged")
        ceDamages.push(['Bin Boxes (OK)']);
      if ($('#ceBinsHidden').val() == "Damaged")
        ceDamages.push(['Bin Boxes Display (DAMAGED)']);
        
      if ($('#ceClosetHidden').val() == "Undamaged")
        ceDamages.push(['Closet Door Display (OK)']);
      if ($('#ceClosetHidden').val() == "Damaged")
        ceDamages.push(['Closet Door Display (DAMAGED)']);
        
      if ($('#ceBarndoorHidden').val() == "Undamaged")
        ceDamages.push(['Barn Door Display (OK)']);
      if ($('#ceBarndoorHidden').val() == "Damaged")
        ceDamages.push(['Barn Door Door Display (DAMAGED)']);
      $('#datatable-cedamages').DataTable( {
        "scrollY": "260px",
        "scrollCollapse": true,   "paging":    false,
        "ordering":       false,  "searching": false,
        "autoWidth":      false,  "info":      false,
        data: ceDamages,
        columns: [
          { title: "" }
        ]
      });
    });
    // Literature Reorders
    var ceLit = [];
    $(function(){
      if ($('#ceLit-1Hidden').val() == "Stair Parts Tearpads")
        ceLit.push(['Stair Parts Tearpads']);
        
      if ($('#ceLit-2Hidden').val() == "Closet Door Brochures")
        ceLit.push(['Closet Door Brochures']);
        
      if ($('#ceLit-3Hidden').val() == "Column Tearpads")
        ceLit.push(['Column Tearpads']);

      $('#datatable-celit').DataTable( {
        "scrollY": "260px",
        "scrollCollapse": true,   "paging":    false,
        "ordering":       false,  "searching": false,
        "autoWidth":      false,  "info":      false,
        "oLanguage": {"sEmptyTable": "None Requested"},
        data: ceLit,
        columns: [
          { title: "" }
        ]
      });
    });
    // Additional Notes
    $(function(){
      if ($('#ceNotesHidden').val() == "")
        ($('#showCeNotes').append('None Indicated'));
      else
        $('#showCeNotes').append($('#ceNotesHidden').val());
    });
  // START Genie 'SHOW' JS
    // Out of Stocks
    var genieSkusOos = [];
    $(function(){
      $.each(genieskus, function(index, value) {
        if ($('#genieSku425' + value + 'Hidden').val() == "Out of Stock") {
            var obj = ['425-' + value];
            genieSkusOos.push(obj);
        }
      });
      
      $('#datatable-genieshow').DataTable( {
        "scrollY": "260px",
        "scrollCollapse": true,   "paging":    false,
        "ordering":       false,  "searching": false,
        "autoWidth":      false,  "info":      false,
        "oLanguage": {"sEmptyTable": "No Out of Stocks"},
        data: genieSkusOos,
        columns: [
          { title: "" }
        ]
      });
    });
    // 700 Stock Status
    $(function(){
      if ($('#genieSku4251685Hidden').val() == "Out of Stock, Remove from Callsheet!")
        ($('#showGenie700').append('Out of Stock, Remove from Callsheet!'));
      else
        $('#showGenie700').append($('#genieSku4251685Hidden').val());
    });
    // Additional Notes
    $(function(){
      if ($('#genieNotesHidden').val() == "")
        ($('#showGenieNotes').append('None Indicated'));
      else
        $('#showGenieNotes').append($('#genieNotesHidden').val());
    });
  // START Honeywell 'SHOW' JS
    // Manager on Duty
    $(function(){
      if ($('#plumbing_managerHidden').val() == "")
        ($('#showHwMgr').append('None Indicated'));
      else
        $('#showHwMgr').append($('#plumbing_managerHidden').val());
    });
    // Out of Stocks
    var hwSkusOos = [];
    $(function(){
      $.each(hwskus, function(index, value) {
        var valuedash = [value.slice(0, 3), "-", value.slice(3)].join('');
        if ($('#hwSku' + value + 'Hidden').val() == "Out of Stock") {
            var obj = [valuedash];
            hwSkusOos.push(obj);
        }
      });
      
      $('#datatable-hwshow').DataTable( {
        "scrollY": "260px",
        "scrollCollapse": true,   "paging":    false,
        "ordering":       false,  "searching": false,
        "autoWidth":      false,  "info":      false,
        "oLanguage": {"sEmptyTable": "No Out of Stocks"},
        data: hwSkusOos,
        columns: [
          { title: "" }
        ]
      });
    });
    // Literature Reorders
    var hwLit = [];
    $(function(){
      if ($('#hwLit1Hidden').val() == "Thermostat Brochures")
        hwLit.push(['Thermostat Brochures']);
      if ($('#hwLit2Hidden').val() == "Indoor Air Quality Brochures")
        hwLit.push(['Indoor Air Quality Brochures']);
      $('#datatable-hwlit').DataTable( {
        "scrollY": "260px",
        "scrollCollapse": true,   "paging":    false,
        "ordering":       false,  "searching": false,
        "autoWidth":      false,  "info":      false,
        "oLanguage": {"sEmptyTable": "None Requested"},
        data: hwLit,
        columns: [
          { title: "" }
        ]
      });
    });
    // Additional Notes
    $(function(){
      if ($('#hwNotesHidden').val() == "")
        ($('#showHwNotes').append('None Indicated'));
      else
        $('#showHwNotes').append($('#hwNotesHidden').val());
    });
  // START Summit 'SHOW' JS
    // Out of Stocks
    var summitSkusOos = [];
    $(function(){
      $.each(summitskus, function(index, value) {
        if ($('#summitSku647' + value + 'Hidden').val() == "Out of Stock") {
            var obj = ['647-' + value];
            summitSkusOos.push(obj);
        }
      });
      
      $('#datatable-summitSkusOos').DataTable( {
        "scrollY": "260px",
        "scrollCollapse": true,   "paging":    false,
        "ordering":       false,  "searching": false,
        "autoWidth":      false,  "info":      false,
        "oLanguage": {"sEmptyTable": "No Out of Stocks"},
        data: summitSkusOos,
        columns: [
          { title: "" }
        ]
      });
    });
    // Additional Notes
    $(function(){
      if ($('#summitNotesHidden').val() == "")
        ($('#showSummitNotes').append('None Indicated'));
      else
        $('#showSummitNotes').append($('#summitNotesHidden').val());
    });
  // START All Stone and Tuscany 'SHOW' JS
    // Literature Reorders
    $(function(){
      if ($('#allstoneLitHidden').val() == "")
        ($('#showAsLit').append('None Requested'));
      else
        $('#showAsLit').append($('#allstoneLitHidden').val());
    });
    // Additional Notes
    $(function(){
      if ($('#allstoneNotesHidden').val() == "")
        ($('#showAllstoneNotes').append('None Indicated'));
      else
        $('#showAllstoneNotes').append($('#allstoneNotesHidden').val());
    });
    // Tuscany Notes
    $(function(){
      if ($('#tuscanyNotesHidden').val() == "")
        ($('#showTuscanyNotes').append('None Indicated'));
      else
        $('#showTuscanyNotes').append($('#tuscanyNotesHidden').val());
    });
// ENd Callsheets 'SHOW' JS
// START Callsheets 'EDIT' JS
    // START 'notes' each 'EDIT' call
    $.each(notes, function(index, value) {
        $(function(){
            $('#' + value + 'Notes').val($('#' + value + 'NotesHidden').val());
        });
    });
    // END 'notes' each 'EDIT' call
    // START Colonial Elegance 'EDIT' JS
    $(function(){
        $('#millwork_manager').val($('#millwork_managerHidden').val());
    });
    $(function(){
        if ($('#ceSdcHidden').val() == "Undamaged") {$('#ceSdc-1').prop('checked',true);}
        if ($('#ceSdcHidden').val() == "Damaged") {$('#ceSdc-2').prop('checked',true);}
    });
    $(function(){
        if ($('#ceBinsHidden').val() == "Undamaged") {$('#ceBins-1').prop('checked',true);}
        if ($('#ceBinsHidden').val() == "Damaged") {$('#ceBins-2').prop('checked',true);}
    });
    $(function(){
        if ($('#ceTvHidden').val() == "Yes") {$('#ceTv-1').prop('checked',true);}
        if ($('#ceTvHidden').val() == "No") {$('#ceTv-2').prop('checked',true);}
    });
    $(function(){
        if ($('#ceClosetHidden').val() == "Undamaged") {$('#ceCloset-1').prop('checked',true);}
        if ($('#ceClosetHidden').val() == "Damaged") {$('#ceCloset-2').prop('checked',true);}
    });
    $(function(){
        if ($('#ceBarndoorHidden').val() == "Undamaged") {$('#ceBarndoor-1').prop('checked',true);}
        if ($('#ceBarndoorHidden').val() == "Damaged") {$('#ceBarndoor-2').prop('checked',true);}
        if ($('#ceBarndoorHidden').val() == "Not Installed") {$('#ceBarndoor-3').prop('checked',true);}
    });
    $(function(){
        if ($('#ceLit-1Hidden').val() == "Stair Parts Tearpads") {$('#ceLit-1').prop('checked',true);}
        if ($('#ceLit-2Hidden').val() == "Closet Door Brochures") {$('#ceLit-2').prop('checked',true);}
        if ($('#ceLit-3Hidden').val() == "Column Tearpads") {$('#ceLit-3').prop('checked',true);}
    });
    // END Colonial Elegance 'EDIT' JS
    // START Genie 'EDIT' JS
    $.each(genieskus, function(index, value) {
        $(function(){
            if ($('#genieSku425' + value + 'Hidden').val() == "In Stock") {$('#genieSku425' + value + '').prop('checked',true);}
            if ($('#genieSku425' + value + 'Hidden').val() == "Out of Stock") {$('#genieSku425' + value + '').prop('checked',false);}
        });
    });
    $(function(){
        if ($('#genieSku4251685Hidden').val() == "In Stock") {$('#genieSku4251685').prop('checked',true);}
        if ($('#genieSku4251685Hidden').val() == "Out of Stock, Remove from Callsheet!") {$('#genieSku4251685').prop('checked',false);}
    });
    // END Genie 'EDIT' JS
    // START Honeywell 'EDIT' JS
    $(function(){
        $('#plumbing_manager').val($('#plumbing_managerHidden').val());
    });
    $(function(){
        if ($('#hwSku3351566Hidden').val() == "In Stock") {$('#hwSku3351566').prop('checked',true);}
        if ($('#hwSku3351566Hidden').val() == "Out of Stock") {$('#hwSku3351566').prop('checked',false);}
    });
    $.each(hwskus, function(index, value) {
        $(function(){
            if ($('#hwSku' + value + 'Hidden').val() == "In Stock") {$('#hwSku' + value + '').prop('checked',true);}
            if ($('#hwSku' + value + 'Hidden').val() == "Out of Stock") {$('#hwSku' + value + '').prop('checked',false);}
        });
    });
    $(function(){
        if ($('#hwLit1Hidden').val() == "Thermostat Brochures") {$('#hwLit1').prop('checked',true);}
        if ($('#hwLit2Hidden').val() == "Indoor Air Quality Brochures") {$('#hwLit2').prop('checked',true);}
    });
    // END Honeywell 'EDIT' JS
    // START Summit 'EDIT' JS
    $.each(summitskus, function(index, value) {
        $(function(){
            if ($('#summitSku647' + value + 'Hidden').val() == "In Stock") {$('#summitSku647' + value + '').prop('checked',true);}
            if ($('#summitSku647' + value + 'Hidden').val() == "Out of Stock") {$('#summitSku647' + value + '').prop('checked',false);}
        });
    });
    // END Summit 'EDIT' JS
    // START All Stone and Tuscany 'EDIT' JS
    $(function(){
        if ($('#allstoneLitHidden').val() == "All Stone Brochures") {$('#allstoneLit').prop('checked',true);}
    });
    // END All Stone and Tuscany 'EDIT' JS
// End Callsheets 'EDIT' JS
// Start Callsheets 'NEW' JS
    // Submit Button Dialog
    $(function() {
        $("#cs_submit").click(function() {
        $("#submitConfirm").dialog('open');
        return false;
        });
        $( "#submitConfirm" ).dialog({closeOnEscape: true, autoOpen: false, resizable: false, height: "auto", width: 400, modal: true,
              buttons: {
                "Submit": function() {
                  $( this ).dialog( "close" );
                  $('#callsheetComplete').val(true);
                  $("#cs_submit").submit();
                },
                Cancel: function() {
                  $( this ).dialog( "close" );
                }
              }
        });
    });
    // Save Button Dialog
    $(function() {
        $("#cs_save").click(function() {
        $("#saveConfirm").dialog('open');
        return false;
        });
        $( "#saveConfirm" ).dialog({closeOnEscape: true, autoOpen: false, resizable: false, height: "auto", width: 400, modal: true,
              buttons: {
                "OK": function() {
                  $( this ).dialog( "close" );
                  $('#callsheetComplete').val(false);
                  $("#cs_save").submit();
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
    // START 'notes' each 'NEW' call
    $.each(notes, function(index, value) {
        $('#' + value + 'Notes').keyup(function() {
            $("#" + value + "NotesHidden").val($("#" + value + "Notes").val()).change();
        });
    });
    // END 'notes' each 'NEW' call
    // Start Colonial Elegance 'NEW' JS
    $("#storeSelect option").filter(function() {
        return $(this).val() == $("#storeSelectHidden").val();
        }).attr('selected', true);
    $("#storeSelect").on("change", function() {
    $("#storeSelectHidden").val($(this).find("option:selected").attr("value"));
    });
    
    $("#protoSelect option").filter(function() {
        return $(this).val() == $("#protoSelectHidden").val();
        }).attr('selected', true);
    $("#protoSelect").on("change", function() {
    $("#protoSelectHidden").val($(this).find("option:selected").attr("value"));
    });
    
    $('#millwork_manager').keyup(function() {
        $("#millwork_managerHidden").val($("#millwork_manager").val()).change();
    });
    $(':radio[name="ceSdc"]').change(function(){
        if ($(this).val() == "1") {$('#ceSdcHidden').val("Undamaged");}
        else {$('#ceSdcHidden').val("Damaged");}
    });
    $(':radio[name="ceBins"]').change(function(){
        if ($(this).val() == "1") {$('#ceBinsHidden').val("Undamaged");}
        else {$('#ceBinsHidden').val("Damaged");}
    });
    $(':radio[name="ceTv"]').change(function(){
        if ($(this).val() == "1") {$('#ceTvHidden').val("Yes");}
        else {$('#ceTvHidden').val("No");}
    });
    $(':radio[name="ceCloset"]').change(function(){
        if ($(this).val() == "1") {$('#ceClosetHidden').val("Undamaged");}
        else {$('#ceClosetHidden').val("Damaged");}
    });
    $(':radio[name="ceBarndoor"]').change(function(){
        if ($(this).val() == "1") {$('#ceBarndoorHidden').val("Undamaged");}
        if ($(this).val() == "2") {$('#ceBarndoorHidden').val("Damaged");}
        if ($(this).val() == "3") {$('#ceBarndoorHidden').val("Not Installed");}
    });
    $(':checkbox[name="ceLit-1"]').change(function(){
        if ($(this).is(':checked')) {$('#ceLit-1Hidden').val("Stair Parts Tearpads");}
        if ($(this).is(':not(:checked)')) {$('#ceLit-1Hidden').val("");}
    });
    $(':checkbox[name="ceLit-2"]').change(function(){
        if ($(this).is(':checked')) {$('#ceLit-2Hidden').val("Closet Door Brochures");}
        if ($(this).is(':not(:checked)')) {$('#ceLit-2Hidden').val("");}
    });
    $(':checkbox[name="ceLit-3"]').change(function(){
        if ($(this).is(':checked')) {$('#ceLit-3Hidden').val("Column Tearpads");}
        if ($(this).is(':not(:checked)')) {$('#ceLit-3Hidden').val("");}
    });
    // End Colonial Elegance 'NEW' JS
    // Start Genie 'NEW' JS
    $(function() {
      $('#genieDblclick').on('dblclick', function(){
        if ($('#genieDblclick').hasClass('genieDblclickChecked')) {
          $.each(genieskus, function(index, value) {
            $(':checkbox[name=' + "genieSku425" + value + "" + ']').prop('checked',false);
            $('#genieSku425' + value + 'Hidden').val("Out of Stock");
          });
          $('#genieDblclick').removeClass('genieDblclickChecked').addClass('genieDblclickUnchecked');
          return false
        }
        if ($('#genieDblclick').hasClass('genieDblclickUnchecked')) {
          $.each(genieskus, function(index, value) {
            $(':checkbox[name=' + "genieSku425" + value + "" + ']').prop('checked',true);
            $('#genieSku425' + value + 'Hidden').val("In Stock");
          });
          $('#genieDblclick').removeClass('genieDblclickUnchecked').addClass('genieDblclickChecked');
          return false
        }
      });
    });
    $.each(genieskus, function(index, value) {
        $(':checkbox[name=' + "genieSku425" + value + "" + ']').change(function(){
            if ($(this).is(':checked')) {$('#genieSku425' + value + 'Hidden').val("In Stock");}
            if ($(this).is(':not(:checked)')) {$('#genieSku425' + value + 'Hidden').val("Out of Stock");}
        });
    });
    $(':checkbox[name="genieSku4251685"]').change(function(){
        if ($(this).is(':checked')) {$('#genieSku4251685Hidden').val("In Stock");}
        if ($(this).is(':not(:checked)')) {$('#genieSku4251685Hidden').val("Out of Stock, Remove from Callsheet!");}
    });
    // End Genie 'NEW' JS
    // Start Honeywell 'NEW' JS
    $(function() {
      $('#hwDblclick').on('dblclick', function(){
        if ($('#hwDblclick').hasClass('hwDblclickChecked')) {
          $.each(hwskus, function(index, value) {
            $(':checkbox[name=' + "hwSku" + value + "" + ']').prop('checked',false);
            $('#hwSku' + value + 'Hidden').val("Out of Stock");
          });
          $('#hwDblclick').removeClass('hwDblclickChecked').addClass('hwDblclickUnchecked');
          return false
        }
        if ($('#hwDblclick').hasClass('hwDblclickUnchecked')) {
          $.each(hwskus, function(index, value) {
            $(':checkbox[name=' + "hwSku" + value + "" + ']').prop('checked',true);
            $('#hwSku' + value + 'Hidden').val("In Stock");
          });
          $('#hwDblclick').removeClass('hwDblclickUnchecked').addClass('hwDblclickChecked');
          return false
        }
      });
    });
    $('#plumbing_manager').keyup(function() {
        $("#plumbing_managerHidden").val($("#plumbing_manager").val()).change();
    });
    $.each(hwskus, function(index, value) {
        $(':checkbox[name=' + "hwSku" + value + "" + ']').change(function(){
        if ($(this).is(':checked')) {$('#hwSku' + value + 'Hidden').val("In Stock");}
        if ($(this).is(':not(:checked)')) {$('#hwSku' + value + 'Hidden').val("Out of Stock");}
        });
    });
    $(':checkbox[name="hwLit1"]').change(function(){
        if ($(this).is(':checked')) {$('#hwLit1Hidden').val("Thermostat Brochures");}
        if ($(this).is(':not(:checked)')) {$('#hwLit1Hidden').val("");}
    });
    $(':checkbox[name="hwLit2"]').change(function(){
        if ($(this).is(':checked')) {$('#hwLit2Hidden').val("Indoor Air Quality Brochures");}
        if ($(this).is(':not(:checked)')) {$('#hwLit2Hidden').val("");}
    });
    // End Honeywell 'NEW' JS
    // Start Summit 'NEW' JS
    $(function() {
      $('#summitDblclick').on('dblclick', function(){
        if ($('#summitDblclick').hasClass('summitDblclickChecked')) {
          $.each(summitskus, function(index, value) {
            $(':checkbox[name=' + "summitSku647" + value + "" + ']').prop('checked',false);
            $('#summitSku647' + value + 'Hidden').val("Out of Stock");
          });
          $('#summitDblclick').removeClass('summitDblclickChecked').addClass('summitDblclickUnchecked');
          return false
        }
        if ($('#summitDblclick').hasClass('summitDblclickUnchecked')) {
          $.each(summitskus, function(index, value) {
            $(':checkbox[name=' + "summitSku647" + value + "" + ']').prop('checked',true);
            $('#summitSku647' + value + 'Hidden').val("In Stock");
          });
          $('#summitDblclick').removeClass('summitDblclickUnchecked').addClass('summitDblclickChecked');
          return false
        }
      });
    });
    $.each(summitskus, function(index, value) {
        $(':checkbox[name=' + "summitSku647" + value + "" + ']').change(function(){
            if ($(this).is(':checked')) {$('#summitSku647' + value + 'Hidden').val("In Stock");}
            if ($(this).is(':not(:checked)')) {$('#summitSku647' + value + 'Hidden').val("Out of Stock");}
        });
    });
    // End Summit 'NEW' JS
    // Start All Stone and Tuscany 'NEW' JS
    $(':checkbox[name="allstoneLit"]').change(
        function(){
            if ($(this).is(':checked')) {$('#allstoneLitHidden').val("All Stone Brochures");}
            if ($(this).is(':not(:checked)')) {$('#allstoneLitHidden').val("");}
    });
    // End All Stone and Tuscany 'NEW' JS
// End Callsheets 'NEW' JS
});}); // turbolinks and document-ready Endpoint