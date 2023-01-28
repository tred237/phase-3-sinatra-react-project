# link routines to client but everything on page load useEffect
# store in state and access state for routines route instead of having as many routes


class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    { message: "Trainer Catalog" }.to_json
  end

  get "/clients" do
    Client.all.to_json(include: :routines)
  end

  get "/routines" do
    Routine.all.to_json
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

  get "/routines/client_id=:id" do
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
                    length_of_time_minutes: params[:length_of_time_minutes]
                    client_id: params[:client_id]).to_json
  end

  patch "/clients/:id" do
    Client.find(params[:id]).update(name: params[:name]).to_json
  end

  patch "/routines/:id" do
    routine = Routine.find(params[:id])
    params.each{|key, value| routine.update(key => value).to_json if key != "id"}.to_json
  end
end
