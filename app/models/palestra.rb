class Palestra < ApplicationRecord
  belongs_to :track
  belongs_to :session
end
