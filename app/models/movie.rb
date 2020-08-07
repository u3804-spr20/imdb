class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director

  has_many   :characters,
             class_name: "Casting",
             dependent: :destroy

  # Indirect associations

  has_many   :actors,
             through: :characters,
             source: :actor

  # Validations

  validates :title, uniqueness: { scope: %i[year director_id] }

  validates :title, presence: true

  # Scopes

  def to_s
    title
  end
end
