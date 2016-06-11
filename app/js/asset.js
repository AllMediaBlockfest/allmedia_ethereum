$(document).ready(function() {

  $("button.set").click(function() {
    var value = $("input#name").val();
    Song.set(value);
    addToLog("SimpleStorage.set("+value+")");
  });

  $("button.get").click(function() {
    var value = SimpleStorage.get().toNumber();
    $(".value").html(value);
    addToLog("SimpleStorage.get()");
  });

  var addToLog = function(txt) {
    $(".logs").append("<br>" + txt);
  }

});
