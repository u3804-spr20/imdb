class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director

  has_many   :characters,
             :class_name => "Casting",
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :title, :uniqueness => { :scope => [:year, :director_id] }

  validates :title, :presence => true

  # Scopes

  def to_s
    title
  end

end
