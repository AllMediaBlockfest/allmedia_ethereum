$(document).ready(function() {

  $("#addAsset").click(function() {

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
