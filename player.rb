class Player
  attr_accessor :nama, :blood, :manna
  
  def initialize nama
    self.nama = nama
    self.blood = 100
    self.manna = 40
    end
end
