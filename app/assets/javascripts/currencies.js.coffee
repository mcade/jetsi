# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  responsiveHelper = undefined
  breakpointDefinition =
    tablet: 1024
    phone: 480

  tableContainer = $('.display')
  tableContainer.dataTable

    bPaginate: true
    # Setup for responsive datatables helper.
    bAutoWidth: false
    bStateSave: false
    bLengthChange: false
    sDom: '<"top">rt<"bottom"fp><"clear">'
    oLanguage:
      sSearch: ""
      oPaginate:
        sNext: ""
        sPrevious: ""
    # bFilter: false
    bInfo: false
    aaSorting: [[
      4
      "desc"
    ]]

    aoColumnDefs: [
      {
        sType: "numeric-comma"
        aTargets: [4]
      }

      {
        bSortable: false
        aTargets: [0,1]
      }
    ]
 

    fnPreDrawCallback: ->
    
      # Initialize the responsive datatables helper once.
      @responsiveHelper = new ResponsiveDatatablesHelper(this, breakpointDefinition)  unless @responsiveHelper
      return

    fnRowCallback: (nRow) ->
      @responsiveHelper.createExpandIcon nRow
      return

    fnDrawCallback: (oSettings) ->
      @responsiveHelper.respond()
      return