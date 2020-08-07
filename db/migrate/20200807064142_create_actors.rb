class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.text :bio
      t.string :image
      t.date :dob

      t.timestamps
    end
  end
end
