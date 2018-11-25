

$(function () {
  $(".js-more").on('click', function() {
    var id = $(this).data("id");
    $.getJSON("/bourbons/" + id + "/bourbon_data", function(data) {
      // Replace text of body-id div
      $("#body-" + id).html(data["description"]);
    });
  });
});
