class CreateRoutine < ActiveRecord::Migration[6.1]
  def change
    create_table :routines do |t|
      t.string :day
      t.integer :sets
      t.integer :reps
      t.integer :user_id
      t.integer :exercise_id
      t.timestamps
    end
  end
end
