class ChangeRoutinesColumnMetadata < ActiveRecord::Migration[6.1]
  def change
    change_column :routines, :distance_miles, :integer
    change_column_null :routines, :day, false
    change_column_null :routines, :exercise, false
    change_column_null :routines, :exercise_type, false
  end
end
