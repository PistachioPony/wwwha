require 'spec_helper'

describe Game do
  subject(:game) { Game.new }

  describe "#add_players_from_id" do

    it "adds the players" do
      game.add_players_from_id(["1", "2", "3"])
    end

  end
end