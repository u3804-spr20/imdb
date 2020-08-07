class Casting < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :actor_id, :presence => true

  validates :movie_id, :presence => true

  # Scopes

  def to_s
    character_name
  end

end
