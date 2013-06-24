$(document).ready ->
  componentsFrom = (element) ->
    element.data('component').split(' ')

  initializeComponents = (i, element) ->
    for component in componentsFrom($(element))
      instance = new (eval(component))($(element))
      $(element).data('#{component}', instance)

  $('[data-component]').each(initializeComponents)
