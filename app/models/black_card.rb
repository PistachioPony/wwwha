class BlackCard < ActiveRecord::Base
  self.has_many(:games)
end