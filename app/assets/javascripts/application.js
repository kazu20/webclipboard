// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery
//= require jquery-ui
//= require bootstrap-sprockets
$(function(){
  $('.box').resizable({
   stop: function(e,ui){
      $.ajax({
         url: "position/set_width",
         type: "GET",
         data: {
            dom_id: $(this).parent().attr("class"),
            dom_width: $(this).width(),
            dom_height: $(this).height()
            },
         dateType: "html",
         success: function(data){
         //   alert("success");
         },
         error: function(data){
         //   alert("error");
         }
      });
   }  
}).draggable({
     stack: '.box',
     cancel: "p",
     scrollSensitivity: "50",
     stop: function(e, ui){
         $.ajax({
            url: "position/set_position",
            type: "GET",
            data: {top: ui.offset.top,
                   left: ui.offset.left,
                   dom_id: $(this).parent().attr("class")
                  },
            dateType: "html",
            success: function(data){
            //   alert("success");
            },
            error: function(data){
            //   alert("error");
            }
         });
      }
  });

 //modal表示時にtextareaにフォーカスする
 $("#myModal").on('shown.bs.modal', function (){
  $("#fusen_message").focus();
  });

 //noticeを３秒でフェードアウト
 $("#notice").fadeIn("slow",function(){
  $(this).delay(3000).fadeOut("slow");
 });

$("#edit-Modal").on('hidden.bs.modal', function(e){
  location.href = "/fusens";
});

});

