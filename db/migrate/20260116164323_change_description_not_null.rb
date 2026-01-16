class ChangeDescriptionNotNull < ActiveRecord::Migration[8.1]
  def change
    change_column_null :posts, :description, false
  end
end
