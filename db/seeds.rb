# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Photo.destroy_all
Artist.destroy_all
Song.destroy_all

artist1 = Artist.create!({name: "R.E.M.", image_url: "http://res.cloudinary.com/irinaovdii/image/upload/v1516341353/rem_meehbe.jpg"})
artist2 = Artist.create!({name: "John Lennon", image_url: "http://res.cloudinary.com/irinaovdii/image/upload/v1516341353/lennon_f6gppw.jpg"})
artist3 = Artist.create!({name: "Madonna", image_url: "http://res.cloudinary.com/irinaovdii/image/upload/v1516463948/madonna_vhma7e.jpg"})
artist4 = Artist.create!({name: "Frank Sinatra", image_url: "http://res.cloudinary.com/irinaovdii/image/upload/v1516464015/sinatra_ump7wp.jpg"})

song1 = Song.create!( { name: "Losing My Religion", duration: 3, artist: artist1 })
song2 = Song.create!( { name: "Imagine", duration: 4, artist: artist2 })
song3 = Song.create!( { name: "Amsterdam", duration: 2, artist: artist2 })
song4 = Song.create!( { name: "Everybody Hurts", duration: 3, artist: artist1 })
song5 = Song.create!( { name: "I Saw Her Standing There", duration: 3, artist: artist2 })
song6 = Song.create!( { name: "La Isla Bonita", duration: 3, artist: artist3 })
song7 = Song.create!( { name: "Like a Prayer", duration: 4, artist: artist3 })
song8 = Song.create!( { name: "Let It Snow", duration: 2, artist: artist4 })
song9 = Song.create!( { name: "Jingle Bells", duration: 3, artist: artist4 })
song10 = Song.create!( { name: "Ave Maria", duration: 3, artist: artist4 })


photo1 = Photo.create!({remote_image_url: "http://res.cloudinary.com/irinaovdii/image/upload/v1516341353/rem_meehbe.jpg", artist: artist1})
photo2 = Photo.create!({remote_image_url: "http://res.cloudinary.com/irinaovdii/image/upload/v1516341353/lennon_f6gppw.jpg", artist: artist2})
photo3 = Photo.create!({remote_image_url: "http://res.cloudinary.com/irinaovdii/image/upload/v1516463948/madonna_vhma7e.jpg", artist: artist3})
photo4 = Photo.create!({remote_image_url: "http://res.cloudinary.com/irinaovdii/image/upload/v1516464015/sinatra_ump7wp.jpg", artist: artist4})
