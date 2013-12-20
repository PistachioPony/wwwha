class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def show
    @cardselected = PlayersCard.where(selected: true)
    #binding.pry
  end

  def create
    @game = Game.create
    
    @game.players.append(Player.where(id: params[:game][:players]))
    #@game.players.append(current_player)
    
    @game.update(black_card: BlackCard.order("RANDOM()").first)

    # expecting this to give each player a deck
    @game.start!

    redirect_to edit_player_game_path(current_player, @game)
  end

  def update
  end

  def edit
    @game = Game.find(params[:id])

    @deck = PlayersCard.where(game: @game, player: current_player)
  end

  private

  def for_game(game)
    @whitecard = WhiteCard.includes(:players_cards)
    .merge(PlayersCard.where(game: game))
    .references(:players_cards)
  end
end