class Conferencia < ApplicationRecord
  has_many :tracks
  has_many :sessions
  has_many :palestras
  validates :name
end
