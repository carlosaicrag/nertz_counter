# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all
Round.destroy_all
Player.destroy_all

game1 = Game.create(end: false)
game2 = Game.create(end:true)


cassandra = Player.create!(username: "Cassandra")
carlos = Player.create!(username: "Carlos")
joanne = Player.create!(username: "Joanne")

round1 = Round.create!(game_id: game1.id)
round2 = Round.create!(game_id: game1.id)
round3 = Round.create!(game_id: game1.id)

round4 = Round.create!(game_id: game2.id)
player_round1 = PlayerRound.create!(player_id: cassandra.id, round_id: round1.id, score: 20)
player_round2 = PlayerRound.create!(player_id: carlos.id, round_id: round1.id, score: 20)

player_round3 = PlayerRound.create!(player_id: cassandra.id, round_id: round2.id, score: 20)
player_round4 = PlayerRound.create!(player_id: carlos.id, round_id: round2.id, score: 20)

player_round5 = PlayerRound.create!(player_id: cassandra.id, round_id: round3.id, score: 20)
player_round6 = PlayerRound.create!(player_id: carlos.id, round_id: round3.id, score: 20)

player_round7 = PlayerRound.create!(player_id: cassandra.id, round_id: round4.id, score: 100)
player_round8 = PlayerRound.create!(player_id: carlos.id, round_id: round4.id, score: 20)

game_player1 = GamePlayer.create(game_id: game1.id, player_id: cassandra.id)
game_player2 = GamePlayer.create(game_id: game1.id, player_id: carlos.id)

game_player3 = GamePlayer.create(game_id: game2.id, player_id: cassandra.id)
game_player4 = GamePlayer.create(game_id: game2.id, player_id: carlos.id)





 








