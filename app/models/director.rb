class Director < ApplicationRecord
  enum state: { "mi" => 0, "il" => 1, "in" => 2, "oh" => 3 }

  # Direct associations

  has_many   :movies,
             dependent: :destroy

  # Indirect associations

  # Validations

  validates :name, presence: true

  # Scopes

  scope :hello, -> { where(name: "hello") }

  def to_s
    name
  end
end
