class AddColumnsToRoutines < ActiveRecord::Migration[6.1]
  def change
    add_column :routines, :exercise, :string
    add_column :routines, :body_part, :string
    add_column :routines, :distance_miles, :float
    add_column :routines, :length_of_time_minutes, :integer
    remove_column :routines, :exercise_id
  end
end
