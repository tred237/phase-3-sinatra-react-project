class RenameBodyTypeColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :routines, :body_part, :exercise_type
  end
end
