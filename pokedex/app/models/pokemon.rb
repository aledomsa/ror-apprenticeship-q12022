class Pokemon < ApplicationRecord
    has_many :abilities
    has_many :moves
    has_many :stats
    has_many :types
end
