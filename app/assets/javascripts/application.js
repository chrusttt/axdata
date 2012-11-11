// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require cocoon
//= require jquery.livesearch
//= require jquery.multi-select
//= require score
//= require best_in_place
//= require_tree .

$(document).ready(function() {
  
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();
  $('#search-button').click(function(){
  	$('#search').toggle();
  });

  $('#experiment_sample_ids').multiSelect({});
  $('#q').liveUpdate('ms-list').focus();

 });