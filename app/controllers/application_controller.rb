class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    { message: "Trainer Catalog" }.to_json
  end

  get "/clients" do
    Client.all.to_json
  end

  delete "/routines/:id" do
    routine = Routine.find(params[:id])
    routine.destroy
    routine.to_json
  end

  delete "/clients/:id" do
    client = Client.find(params[:id])
    Routine.where("client_id = #{params[:id]}").each{|e| e.destroy}
    client.destroy
    client.to_json
  end

  get "/clients/:id/routines" do
    Client.find(params[:id]).routines.to_json
  end

  post "/clients" do
    Client.create(name: params[:name]).to_json
  end

  post "/routines" do
    Routine.create(day: params[:day], 
                    sets: params[:sets], 
                    reps: params[:reps], 
                    exercise: params[:exercise], 
                    exercise_type: params[:exercise_type], 
                    distance_miles: params[:distance_miles], 
                    length_of_time_minutes: params[:length_of_time_minutes],
                    client_id: params[:client_id]).to_json
  end

  patch "/clients/:id" do
    Client.find(params[:id]).update(name: params[:name]).to_json
  end

  patch "/clients/:client_id/routines/:routine_id" do
    Routine.where("id = #{params[:routine_id]}").update_all(params.except("client_id", "routine_id")).to_json
  end
end
