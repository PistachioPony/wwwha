class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def show
    for_game(@game)
    deck_for_player(@game)
  end

  def create
    @game = Game.create
    
    @game.players.append(Player.where(id: params[:game][:players]))
    @game.players.append(current_player)
    
    @game.update(black_card: BlackCard.order("RANDOM()").first)

    redirect_to edit_player_game_path(current_player, @game)
  end

  def update
    #TODO get selected card
  end

  def edit
  end

  private

  def for_game(game)
    @whitecard = WhiteCard.includes(:players_cards)
    .merge(PlayersCard.where(game: game))
    .references(:players_cards)
  end

  def deck_for_player(game)
     @cards = WhiteCard.order("RANDOM()")
      .where
      .not(id: WhiteCard.for_game(game).pluck(:id))
      .limit(4)    
  end
end