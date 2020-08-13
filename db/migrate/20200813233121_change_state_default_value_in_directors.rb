class ChangeStateDefaultValueInDirectors < ActiveRecord::Migration[6.0]
  def change
    change_column_default :directors, :state, "IL"
  end
end
