class Actor < ApplicationRecord
  # Direct associations

  has_many   :characters,
             :class_name => "Casting",
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :name, :uniqueness => { :scope => [:dob] }

  validates :name, :presence => true

  # Scopes

  def to_s
    name
  end

end
