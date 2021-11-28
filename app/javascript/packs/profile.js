import $ from 'jquery'
import axios from 'axios'

$(".profilePage_user_image").on("click", function(){
    $(".popup-overlay, .popup-content").addClass("active");
  });
  
  $(".close").on("click", function(){
    $(".popup-overlay, .popup-content").removeClass("active");
  });