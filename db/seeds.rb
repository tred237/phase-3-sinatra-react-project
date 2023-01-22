puts "🌱 Seeding spices..."

Client.create(name: 'Jane')
Client.create(name: 'Mike')

Routine.create(day: 'Monday', exercise: 'Bench Press', exercise_type: 'Strength', sets: rand(3..5), reps: rand(8..15), client_id: 1,)
Routine.create(day: 'Monday', exercise: 'Dumbbell Curls', exercise_type: 'Strength', sets: rand(3..5), reps: rand(8..15), client_id: 1)
Routine.create(day: 'Monday', exercise: 'Sprinting', exercise_type: 'Cardio', sets: 3, length_of_time_minutes: 1, client_id: 1)
Routine.create(day: 'Wednesday', exercise: 'Body Weight Squats', exercise_type: 'Strength', sets: rand(3..5), reps: rand(8..15), client_id: 2)
Routine.create(day: 'Wednesday', exercise: 'Reverse Lunges', exercise_type: 'Strength', sets: rand(3..5), reps: rand(8..15), client_id: 2)
Routine.create(day: 'Wednesday', exercise: 'Bench Press', exercise_type: 'Strength', sets: rand(3..5), reps: rand(8..15), client_id: 2)
Routine.create(day: 'Sunday', exercise: 'Reverse Lunges', exercise_type: 'Strength', sets: rand(3..5), reps: rand(8..15) , client_id: 2)
Routine.create(day: 'Sunday', exercise: 'Pull Ups', exercise_type: 'Strength', sets: rand(3..5), reps: rand(8..15), client_id: 2)
Routine.create(day: 'Sunday', exercise: 'Bench Press', exercise_type: 'Strength', sets: rand(3..5), reps: rand(8..15), client_id: 2)
Routine.create(day: 'Friday', exercise: 'Jogging', exercise_type: 'Cardio', distance_miles: 3, client_id: 1)

puts "✅ Done seeding!"
