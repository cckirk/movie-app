class ActorController < ApplicationController
  def index
    #get all the products from the db
    actor = Actor.all
    render json: actor.as_json
  end

  def show
    the_id = params[:id]
    actor = Actor.find_by(id: the_id)
    render json: actor.as_json 
  end

  def destroy
    the_id = params[:id]
    actor = Actor.find_by(id: the_id)
    actor.destroy
    render json: actor.as_json
  end
  


end
