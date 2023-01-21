class CreateExercise < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :exercise_name
      t.string :body_part
      t.string :description
      t.timestamps
    end
  end
end
