require 'spec_helper'

describe GamesPlayer do
  it { should validate_uniqueness_of(:player_id).scoped_to(:game_id) }
end