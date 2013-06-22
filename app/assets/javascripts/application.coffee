#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require select2

$ ->
  $('[data-component="select2"]').select2(maximumSelectionSize: 1)
