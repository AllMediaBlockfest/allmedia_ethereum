$(document).ready(function() {
//    var filter = web3.eth.filter(options);
//
//    // watch for changes
//    filter.watch(function(error, result){
//        if (!error)
//            console.log(result);
//    });

  $("#addSacem").click(function() {

      console.log("add sacem");
      Database.newSacem(
              $("address").val(),
              $("country").val());
  });

  $("#addArtist").click(function() {

      console.log("add artist");
      Database.newArtist(
              $("address").val(),
              $("ipi").val());
  });

  $("#addAsset").click(function () {

      var asset = {
          isrc: $("#isrc").val(),
          iswc: $("#iswc").val(),
          ipi: $("#ipi").val(),
          sacem: $("#sacem").val()
      };
      console.log(asset.iswc);
      Database.newAsset(asset.isrc,
              asset.iswc,
              asset.ipi,
              asset.sacem);
      console.log(asset.iswc);
  });
});
