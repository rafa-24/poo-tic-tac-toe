require_relative 'player'
require_relative 'board'

class Game
  
  def play
    print "Bienvenido a triki\n"

    player_one = create_player(1)
    player_two = create_player(2)

    board = Board.new
    board.display

    play_rounds(board, player_one, player_two)
  end

  private

  def play_rounds(board, player_one, player_two)
    total_cell = board.rows * board.columns
    turn = 0

    while turn < total_cell
      current_player = turn.even? ? player_one : player_two
      puts "Es el tu turno #{current_player.name} #{current_player.avatar}"

      print 'Elige la fila: '
      row = gets.chomp.to_i
      print 'Elige la columna: '
      column = gets.chomp.to_i

      if board.write_cell(row, column, current_player.avatar)

        if board.winner? == current_player.avatar
          puts "🎉 ¡#{current_player.name} ha ganado con '#{current_player.avatar}'!"
          return
        end

        turn += 1
      else
        puts "❌ Movimiento no válido, intenta otra vez."
      end      
    end

     puts "\n🟡 El tablero está lleno. ¡Juego terminado!"
  end

  def create_player(number)
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
game = Game.new
game.play