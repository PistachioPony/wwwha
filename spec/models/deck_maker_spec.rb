require 'spec_helper'

describe DeckMaker do
  describe '::make' do
    let(:player) { FactoryGirl.create(:player) }
    let(:game) { FactoryGirl.create(:game) }

    before do 
      4.times { FactoryGirl.create(:white_card) }
      game.players << player
    end

    it "assigns white cards to a player" do
      expect { 
        DeckMaker.make(player, game)
      }.to change {
        player.players_cards.where(game: game).count
      }.from(0).to(4)
    end

  end

end