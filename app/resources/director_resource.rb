class DirectorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :bio, :string
  attribute :image, :string
  attribute :state, :integer_enum, allow: Director.states.keys

  # Direct associations

  has_many :movies

  # Indirect associations
end
