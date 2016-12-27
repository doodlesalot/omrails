var tabs = $('ul.tabs');
tabs.each(function(i) {
  var tab = $(this).find('> li > a');
  tab.click(function(e) {
    var contentLocation = $(this).attr('href');
    if(contentLocation.charAt(0)=="#") {
      e.preventDefault();
      tab.removeClass('active');
      $(this).addClass('active');
      $(this).parents('ul.tabs').next().find(contentLocation).show().css({'display': 'block'}).addClass('active').siblings().hide().removeClass('active');
    }
  });
});

console.log("yo");