class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    { message: "Trainer Catalog" }.to_json
  end

  get "/clients" do
    Client.all.to_json
  end

  get "/exercises" do
    Exercise.all.to_json
  end

  get "/routines" do
    Routine.all.to_json
  end

  delete "/routines/:id" do
    routine = Routine.find(params[:id])
    routine.destroy
    routine.to_json
  end

  delete "/exercises/:id" do
    exercise = Exercise.find(params[:id])
    Routine.where("exercise_id = #{params[:id]}").each{|e| e.destroy}
    exercise.destroy
    exercise.to_json
  end
end
