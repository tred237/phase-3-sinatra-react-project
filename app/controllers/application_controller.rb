class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Trainer Catalog" }.to_json
  end

  get "/clients" do
    User.all.to_json
  end

  get "/exercises" do
    Exercises.all.to_json
  end

  get "/routines" do
    Routine.all.to_json
  end
end
