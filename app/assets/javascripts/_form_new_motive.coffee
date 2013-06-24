class @FormNewMotive
  constructor: (@container) ->
    @closeButton().click(@close)
    @openButton().click(@open)

  initializeSelect: =>
    @container.find('.select2').select2({maximumSelectionSize: 1}).show()

  close: =>
    @container.hide()
    @openButton().show()

  open: =>
    @container.show()
    @initializeSelect()
    @openButton().hide()

  openButton: => $('[data-action="open-form-new-motive"]')
  closeButton: => @container.find('[data-action="close"]')


