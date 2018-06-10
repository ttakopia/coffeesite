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
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require rails-ujs
//= require foundation
//= require underscore
//= require gmaps/google
//= require_tree .

$(function(){ $(document).foundation(); });

//メインスライド
$(document).ready(function(){
  $('.bxslider').bxSlider({
  pagerCustom: '#bx-pager',//ページャーをカスタマイズする（サムネイルにする）ための記述
  controls:false//前後の矢印を消すための記述
  });
});

//サムネイルをスライドさせるための記述
$(document).ready(function(){
  $('.bxslider02').bxSlider({
  pager:false,
  minSlides: 6,//１スライドに表示するサムネイルの数
  maxSlides: 6,//１スライドに表示するサムネイルの最大数
  slideWidth: 180,//サムネイルの横幅（単位はpx）
  slideMargin: 10//サムネイル間の余白（単位はpx）
      });
});

handler = Gmaps.build('Google');
handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
  markers = handler.addMarkers([
    {
      "lat": 0,
      "lng": 0,
      "picture": {
        "url": "http://people.mozilla.com/~faaborg/files/shiretoko/firefoxIcon/firefox-32.png",
        "width":  32,
        "height": 32
      },
      "infowindow": "hello!"
    }
  ]);
  handler.bounds.extendWith(markers);
  handler.fitMapToBounds();
});