container = 1200

$(document).ready ->
  
  resize()

  menuToggle = $("#js-mobile-menu").unbind()
  $("#js-navigation-menu").removeClass "show"
  menuToggle.on "click", (e) ->
    e.preventDefault()
    $("#js-navigation-menu").slideToggle ->
      $("#js-navigation-menu").removeAttr "style"  if $("#js-navigation-menu").is(":hidden")
      return

    return

  $(document).on 'init.slides', ->
    $('.loading-container').fadeOut ->
      $(this).remove();
      return

  $(window).on 'resize':->
    resize()


  setTimeout slider, 500

  return

resize = ->
  ancho = $(window).width()
  $('.js-bg-left').width((ancho - container) / 2 )

slider = ->
  $('#slides').superslides pagination: false, animation: 'fade'
  $('.slides-container, .slides-navigation').fadeIn();