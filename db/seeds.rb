# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv"
# require "awesome_print"

# Intitial db load

# player_data = []
# game_data = []
#
# default_pictures = [
#   "https://s-media-cache-ak0.pinimg.com/564x/0b/0b/79/0b0b7905afd7b334f278b37e9c42316b.jpg",
#   "https://s-media-cache-ak0.pinimg.com/736x/44/f0/2c/44f02cfd2102e91774365c62a9fda389.jpg",
#   "https://s-media-cache-ak0.pinimg.com/564x/5e/33/2f/5e332fe846246c903cc0a250a0d675c3.jpg",
#   "http://cdn.playbuzz.com/cdn/599082f3-5e3f-44f1-8ce2-79cbfd52c408/b8e30c10-0497-4a05-87be-5a3a21db81e5.jpg",
#   "http://www.iitaly.org/files/imagecache/545x/files/still_photos/Padrino_1343681957.png",
#   "http://i.telegraph.co.uk/multimedia/archive/02996/scarface_2996051b.jpg",
#   "http://assets.atlasobscura.com/article_images/28524/image.jpg",
#   "https://s-media-cache-ak0.pinimg.com/564x/48/17/14/48171426a1f3ba300daf1952587d0a5b.jpg",
#   "http://media.npr.org/assets/img/2014/01/07/3426007_custom-079a57231468334d7e3dddf0079573805fd02a28-s900-c85.jpg"
#
# ]
#
# CSV.foreach("./public/player-data.csv",{headers: true, header_converters: :symbol}) do |row|
#   player_data << row.to_hash
# end
# CSV.foreach("./public/game_data.csv",{headers: true, header_converters: :symbol}) do |row|
#   game_data << row.to_hash
# end
#
# # ap player_data
# # ap game_data
#
# def mafia_won?(game)
#   game[:win] === "m"
# end
#
# game_data.each do |game|
#   if game[:image].nil?
#     game[:image] = default_pictures.sample
#   end
#   Game.create(
#   name: game[:name],
#   game_image: game[:image],
#   description: game[:description],
#   complete: true,
#   mafia_won: mafia_won?(game)
#   )
# end
#
# player_data.each do |player|
#   plyr = Player.create(name: player[:name], image: player[:image])
#
#   counter = 1
#   69.times do
#     symb = counter.to_s
#     if player[symb.to_sym]
#       plyr.games << Game.find(counter)
#     end
#     counter += 1
#   end
# end


# update player images to blank
Player.all.each do |player|
  player[:image] = 'http://www.wickliffemidgetfootball.com/assets/no-image-available-bbdbbe501d2b08a157a21431bc7b49df2c6cf6d892cc3083114229876cd7d6f4.jpg'
  player.save
end
