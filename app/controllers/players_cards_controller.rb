class PlayersCardsController < ApplicationController

  def update
    # grab the selected white_card_id 
    # change the selected to true
    # save it!

    @cardselected = PlayersCard.find_by(id: params[:id])
    @cardselected.selected = true

    @cardselected.save

  end 
end