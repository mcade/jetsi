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

    bPaginate: false
    # Setup for responsive datatables helper.
    bAutoWidth: false
    bStateSave: false
    bFilter: false
    bInfo: false
    aaSorting: [[
      4
      "desc"
    ]]
    aoColumnDefs: [
      bSortable: false
      aTargets: [0,1]
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