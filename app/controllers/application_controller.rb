class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    { message: "Trainer Catalog" }.to_json
  end

  get "/clients" do
    Client.all.to_json(include: :routines)
  end

  get "/clients/:id/routines/summary_stats" do
    Client.find(params[:id]).summary_stats.to_json
  end

  delete "/clients/:id" do
    client = Client.find(params[:id])
    Routine.where(client_id: params[:id]).find_each{|e| e.destroy}
    client.destroy
    client.to_json
  end

  delete "/clients/:client_id/routines/:routine_id" do
    routine = Routine.find(params[:routine_id])
    routine.destroy
    routine.to_json
  end

  post "/clients" do
    Client.create(name: params[:name]).to_json
  end

  post "/clients/:id/routines" do
    Routine.create(day: params[:day], 
                    sets: params[:sets], 
                    reps: params[:reps], 
                    exercise: params[:exercise], 
                    exercise_type: params[:exercise_type], 
                    distance_miles: params[:distance_miles], 
                    length_of_time_minutes: params[:length_of_time_minutes],
                    client_id: params[:id]).to_json
  end

  patch "/clients/:id" do
    Client.find(params[:id]).update(name: params[:name]).to_json
  end

  patch "/clients/:client_id/routines/:routine_id" do
    routine = Routine.find(params[:routine_id])
    routine.update(params.except("client_id", "routine_id")).to_json
  end
end