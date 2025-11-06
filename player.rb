class Player 
  attr_accessor :name, :avatar

  def initialize(name, avatar)
    @name = name
    @avatar = avatar
  end

  def show_info
    puts "Hola soy el jugador #{name} y jugare tres en raya con #{avatar}"
  end
end



