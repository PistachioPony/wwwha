require 'spec_helper'

describe PlayersCard do
  it { should validate_uniqueness_of(:selected).scoped_to(:white_card_id, :game_id) }
end