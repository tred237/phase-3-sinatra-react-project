puts "🌱 Seeding spices..."

Client.create(name: 'Jane')
Client.create(name: 'Mike')

Exercise.create(exercise_name: 'Bench Press', body_part: 'Chest', description: 'Lay down on a bench. Lift the bar above your chest. Lower the bar to your chest, Push the bar back above your chest.')
Exercise.create(exercise_name: 'Dumbbell Curls', body_part: 'Arms', description: 'Hold a dumbbell in each hand at your sides. Lift the one dumbbell to your shoulder. Lower the dumbell back down to your side. Repeat for each arm.')
Exercise.create(exercise_name: 'Body Weight Squats', body_part: 'Legs', description: 'Stand up straight with your feet shoulder width apart. Hold your hands to your chest. Slowly lower your body in a crouching motion where your butt almost touches the ground. Push your body up to the original upright position.')
Exercise.create(exercise_name: 'Reverse Lunges', body_part: 'Legs', description: 'Stand upright with your feet pointing forward. Move one leg behind you to where that knee almost touches the ground. Move back to an upright position and repeat with the other leg.')
Exercise.create(exercise_name: 'Pull Ups', body_part: 'Back', description: 'Grab on to a pull up bar with both hands so you are hanging. Pull your body towards the bar until your chin is above the bar. Slowly lower yourself back down to the original hanging position.')

Routine.create(day: 'Monday', sets: rand(3..5), reps: rand(8..15), client_id: 1, exercise_id: 1)
Routine.create(day: 'Monday', sets: rand(3..5), reps: rand(8..15), client_id: 1, exercise_id: 3)
Routine.create(day: 'Monday', sets: rand(3..5), reps: rand(8..15), client_id: 1, exercise_id: 4)
Routine.create(day: 'Wednesday', sets: rand(3..5), reps: rand(8..15), client_id: 2, exercise_id: 2)
Routine.create(day: 'Wednesday', sets: rand(3..5), reps: rand(8..15), client_id: 2, exercise_id: 4)
Routine.create(day: 'Wednesday', sets: rand(3..5), reps: rand(8..15), client_id: 2, exercise_id: 5)
Routine.create(day: 'Sunday', sets: rand(3..5), reps: rand(8..15) , client_id: 2, exercise_id: 2)
Routine.create(day: 'Sunday', sets: rand(3..5), reps: rand(8..15), client_id: 2, exercise_id: 1)
Routine.create(day: 'Sunday', sets: rand(3..5), reps: rand(8..15), client_id: 2, exercise_id: 3)
Routine.create(day: 'Friday', sets: rand(3..5), reps: rand(8..15), client_id: 1, exercise_id: 2)

puts "✅ Done seeding!"
