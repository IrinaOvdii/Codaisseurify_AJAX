function nextSongId() {
  return $(".song_name").length + 1;
};

function createSong(name) {
  var newSong = {name: name};

  $.ajax({
    type: "POST",
    url: "/api/artists/9/songs",
    data: JSON.stringify({
        song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .fail(function(error) {
    console.log(error);
  })
  .done(function(data){
    console.log(data);

    var label = $('<label></label>')
    .attr('for', songId)
    .html(name);


    var destroySong = $('<input type="button value="Delete song" onclick="deleteSong()" id="delete-song" >')
    var songId = "song-" + nextSongId();
    var Item = $('<li> class="song_name"</li>');
    Item.attr('id', songId);
    Item.append(label).append(destroySong);

    $("#songList").append(Item);
  })
}

function submitSong(event) {
  event.preventDefault();
  createSong($("#song_name").val());
  $("#song_name").val(nul);
}

function deleteSong(event) {
  event.preventDefault();
  var button = this;
  $(button).parent().remove();
}

$(document).ready(function() {
  $("form").bind('submit', submitSong);
  $("input[type=button]").bind('click', deleteSong)
});
