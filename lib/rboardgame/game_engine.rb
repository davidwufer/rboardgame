module RBoardGame
  # The backend engine for running a game until completion or termination 
  class GameEngine
    
    def initialize(game)
      @game = game
    end

    def play_game
      setup_players
      winner = play_until_game_over
      display(winner)
    end

    def play_until_game_over
      until @game.game_over?
        do_move_for_current_player
      end

      return @game.winner
    end

    def do_move_for_current_player
      move = get_move_for_current_player
      @game = @game.do_move(move)
    end

    def get_move_for_current_player
      piece_player_map.current_player(@game).move(@game)
    end

    def setup_players
      piece_player_map ||= PiecePlayerMap.new(@game)
    end

    private
      # attr_reader :game
      attr_reader :piece_player_map
  end

  class PiecePlayerMap

    def initialize(game)
      game.playable_pieces.each do |piece|
        map[piece] = choose_player(piece)
      end
    end

    def choose_player(piece)
      HumanPlayer.new
    end

    def current_player(game)
      map[game.current_piece]
    end

    private 
      def map
        @map ||= {}
      end
  end

  class HumanPlayer
  end

  class AlphaBetaPlayer
  end

  class RandomPlayer
  end
end