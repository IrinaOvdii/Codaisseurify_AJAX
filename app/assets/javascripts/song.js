
function createSong(song_artist_id, name) {
  var newSong = {name: name};

  $.ajax({
    type: "POST",
    url: "/api/artists/" + song_artist_id + "/songs",
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

    var songId = data.song.id;

    var label = $('<label></label>')
    .attr('for', songId)
    .html(name);
    var destroySong = $('<input type="button" value="Delete song" onClick="deleteSong('+song_artist_id + ', ' + songId +')" id="delete-song" class="button" rel="nofollow">');
    var Item = $('<li class="song_name"></li>');
    Item.attr('id', songId);
    Item.append(label).append(destroySong);

    $("#songList").append(Item);
  })
}

function submitSong(event) {
  event.preventDefault();
   createSong($("#song_artist_id").val(), $("#song_name").val());
   $("#song_name").val(null);
}

function deleteSong(song_artist_id, songId) {
  $.ajax({
    type: "DELETE",
    url: "/api/artists/" + song_artist_id + "/songs/" + songId,
    contentType: "application/json",
    dataType: "json"
  })
  .fail(function(error) {
    console.log(error);
  })
  .done(function(data){
    $("#"+songId).remove();
  })
}
function deleteAllSongs(event) {
 event.preventDefault();
 let artist_id = $("#song_artist_id").val();
 $.ajax({
   type: "DELETE",
   url: "/api/artists/" + artist_id + "/songs/delete_all" ,
   contentType: "application/json",
   dataType: "json"
 })
 .fail(function(error) {
   console.log(error);
 })
 .done(function(data){
   $('#songList').empty();
 })
}
  $( document ).ready(function() {
  $("form").bind('submit', submitSong);
  $("#delete-songs").bind('click', deleteAllSongs)
});
