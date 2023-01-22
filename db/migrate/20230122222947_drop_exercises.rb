class DropExercises < ActiveRecord::Migration[6.1]
  def change
    drop_table :exercises
  end
end
