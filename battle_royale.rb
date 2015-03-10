load 'player.rb'

class BattleRoyale
  @@arrPlayer = Array.new
  @@mode = "new"
  
  def initialize
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
    playGame()
   end
   
   def playGame
     while !isGameOver() do
       if @@mode.eql? "new" and @@arrPlayer.length < 3 then
         puts "Pilih mode : "
         input = gets.chomp
       else
         input = "start"
       end
       if input.eql? "new" then
         @@mode = "new"
         puts "Input player name : "
         name = gets.chomp
         @@arrPlayer.push Player.new name
       elsif input.eql? "start" then
         if @@arrPlayer.length < 2 then
           puts "Jumlah pemain kurang"
         else
           @@mode = "play"
           puts "siapa yang akan menyerang : "
           namaPenyerang = gets.chomp
           puts "siapa yang diserang : "
           namaTarget = gets.chomp
           if namaPenyerang.eql? namaTarget then
             puts "tidak bisa menyerang ke diri sendiri"
           else
             puts "Descriptions"
             for player in @@arrPlayer do
               if player.name.eql? namaPenyerang then
                 player.attack()
               elsif player.name.eql? namaTarget then
                 player.defense()
               end
               puts "#{player.name} : manna = #{player.manna}, blood = #{player.blood}"
            end
          end
       end
     else
       puts "Error input"
     end
  end
    puts "Game Over"
  end

  def isGameOver
    gameOver = false
    for player in @@arrPlayer do
      gameOver = gameOver || player.isGameOver()
    end
    gameOver
    end
  end
  br = BattleRoyale.new
