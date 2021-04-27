class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    change_column :students, :activate, :active
  end
end
