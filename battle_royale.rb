require_relative 'player'

class BattleRoyale
  def self.menu
    puts "#==============================#"
    puts "#"
    puts "Welcome to Battle Arena"
    puts "#"
    puts "#-----------------------------------------------------#"
    puts "# Description :"
    puts "#"
    puts "# 1. ketik “new” untuk membuat karakter #"
    puts "# 2. ketik “start” untuk memulai pertarungan #"
    puts "#-----------------------------------------------------#"
    puts "# Current Player :"
    puts "#"
    puts "#"
    puts "-"
    puts "#"
    puts "# * max player 2 atau 3"
    puts "#"
    puts "#-----------------------------------------------------#"
    input = gets.chomp
    if (input.eql? "new")
      BattleRoyale.inputPlayer
      end
    end

  def self.inputPlayer
    puts "#==============================#"
    puts "#"
    puts "Welcome to Battle Arena"
    puts "#"
    puts "#-----------------------------------------------------#"
    puts "# Description :"
    puts "#"
    puts "# 1. ketik “new” untuk membuat karakter #"
    puts "# 2. ketik “start” untuk memulai pertarungan #"
    puts "#-----------------------------------------------------#"
    puts "#"
    puts "-"
    puts "#"
    puts "# * max player 2 atau 3"
    puts "#"
    puts "#-----------------------------------------------------#"    
    puts "# Masukan Nama Player : "
    input = gets.chomp
    player1 = Player.new input
    BattleRoyale.menu
  end
end
BattleRoyale.menu
