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

  $("#playAsset").click(function() {
      var asset = {
          diffuser: $("#diffuser").val(),
          isrc: $("#isrc").val(),
          context: $("#context").val()
      };
      //console.log(asset);
      Database.play(asset.diffuser,
              asset.context,
              asset.isrc);
      // console.log(asset.isrc);
  });
});
