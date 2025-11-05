class Player 
  attr_accessor :name, :avatar

  def initialize(name, avatar)
    @name = name
    @avatar = avatar
  end

  def show_info
    puts "Hola soy el jugador #{name} y jugare tres en raya con #{avatar}"
  end

  def self.create_player(number) # self obtengo acceso al objeto actual
    print " Jugador #{number} Ingrese nombre de usuario: "
    name = gets.chomp

    while name.empty?
      print "❌ El nombre no puede estar vacío. Ingresa tu nombre: "
      name = gets.chomp
    end

    print 'Elige un avatar: '
    avatar = gets.chomp

    while avatar.empty?
      print "❌ El avatar no puede estar vacio. Ingresa tu nombre: "
      avatar = gets.chomp
    end

    player = Player.new(name, avatar)
    player.show_info
    player   
  end

end



