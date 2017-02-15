# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@qty1 = 3
@qty2 =2

convert = ->
	$('#tp').text(@tp)

do totalprice = ->
	@tp = @qty1*30+@qty2*40
	do convert





console.log @tp