# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# Y# ou can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('#album_token_inputs').tokenInput '/tags.json',
    {theme: 'facebook', tokenValue: 'name', preventDuplicates: true}
