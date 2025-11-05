require_relative 'player'
require_relative 'board'

class Game
  
  def start_game
    print 'Bienvenido a triki Ingresa un nombre de usuario para continuar: '
    name = gets.chomp
    print 'Elige un avatar: '
    avatar = gets.chomp
    player_one = Player.new(name, avatar)
    player_one.show_info

    print 'Bienvenido a triki Ingresa un nombre de usuario para continuar: '
    name_second = gets.chomp
    print 'Elige un avatar: '
    avatar_second = gets.chomp
    player_second = Player.new(name_second, avatar_second)
    player_second.show_info

    # crear tablero
    print 'Seleccione numero de filas del tablero: '
    rows = gets.chomp.to_i
    print 'Seleccione numero de columnas del tablero: '
    columns = gets.chomp.to_i
    board = Board.new(rows, columns)
    board.create_board

    # jugar por turnos
    total_cell = board.rows * board.columns
    turn = 0

    while turn < total_cell
      current_player = turn.even? ? player_one : player_second
      puts "Es el tu turno #{current_player.name} #{current_player.avatar}"

      print 'Elige la fila: '
      row = gets.chomp.to_i
      print 'Elige la columna: '
      column = gets.chomp.to_i

      if board.write_board(row, column, current_player.avatar)

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

end

game = Game.new
game.start_game