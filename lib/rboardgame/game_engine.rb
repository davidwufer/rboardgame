module RBoardGame
  # The backend engine for running a game until completion or termination 
  class GameEngine
    def initialize(game)
      @game = game
    end

    def play_game
      setup_players
      winner = play_until_game_over
      display winner
    end

    def play_until_game_over
      until @game.game_over?
        move = get_move_for_current_player
        @game = @game.do_move(move)
      end
      return @game.winner
    end

    def setup_players
      piece_player_map or PiecePlayerMap.new(@game.playable_pieces)
    end

    private
      # attr_reader :game
      attr_reader :piece_player_map
  end

  class PiecePlayerMap

    def initialize(playable_pieces)
      # TODO: map piece -> player
    end
  end
end