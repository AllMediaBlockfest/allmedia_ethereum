$(document).ready(function() {

  $("#add").click(function() {

      var asset = {
          isrc: $("#isrc").val(),
          iswc: $("#iswc").val(),
          ipi: $("#ipi").val(),
          sacem: $("#sacem").val()
      };
      console.log(asset);
      Database.newAsset(asset.isrc, asset.iswc, asset.ipi, asset.sacem);
  });
});
