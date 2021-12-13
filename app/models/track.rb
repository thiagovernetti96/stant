class Track < ApplicationRecord
  belongs_to :conferencia
  has_many :sessions
  validates :name
end
