class RenameRoutineFk < ActiveRecord::Migration[6.1]
  def change
    rename_column :routines, :user_id, :client_id
  end
end
