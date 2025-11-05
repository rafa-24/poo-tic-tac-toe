require_relative 'player'
require_relative 'board'

class Game
  
  def start_game
    print "Bienvenido a triki\n"

    player_one = Player.create_player(1)
    player_two = Player.create_player(2)

    # crear tablero # refactorizar en clase board
    print 'Seleccione numero de filas del tablero: '
    rows = gets.chomp.to_i
    print 'Seleccione numero de columnas del tablero: '
    columns = gets.chomp.to_i
    board = Board.new(rows, columns)
    board.create_board

    # Jugar
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