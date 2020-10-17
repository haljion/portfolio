$(document).ready(function () {

  $('a[href^="#"]').click(function () {
    //スクロールのスピード
    var speed = 500;
    var header = $("#header").height();
    //リンク元を取得
    var href = $(this).attr("href");
    //リンク先を取得
    var target = $(href == "#" || href == "" ? 'html' : href);
    //リンク先までの距離を取得(ヘッダー + padding分下へずらす)
    var position = target.offset().top - (header + 30);
    //スムーススクロール
    $("html, body").animate({ scrollTop: position }, speed, "swing");
    return false;
  });

  $(".star").each(function (index, element) {
    // 値取得、★*値 + ☆*(5-値) に変換
    const rank = $(this).text();
    const star = "★".repeat(rank) + "☆".repeat(5 - rank);
    $(this).text(star);
  });

  $(".product").each(function (index, element) {
    $(this).addClass("jq-modal-button" + index);
  });

  $(".slick").each(function (index, element) {
    $(this).addClass("jq-slick" + index);
  });

  $(".modal").each(function (index, element) {
    $(this).addClass("jq-modal" + index);

    $(".jq-modal-button" + index).click(function () {

      $(".jq-modal" + index).fadeIn();
      $(".jq-slick" + index).slick('setPosition');
    });

    $(".modal-bg").click(function () {
      $(".jq-modal" + index).fadeOut();
    });
  });

  $(".slick").slick({
    arrows: false,
    dots: true,
    dotsClass: 'slide-dots'
  });
});