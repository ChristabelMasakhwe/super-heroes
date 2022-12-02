class HeroPower < ApplicationRecord
    validates :strength, inclusion: {in: %w(strong weak average)}
    
    belongs_to :power
    belongs_to :hero
end
