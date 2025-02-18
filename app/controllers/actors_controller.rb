class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/index" })
  end

  def show
    the_id = params.fetch("the_id")
    @the_actor = Actor.find(the_id)
    render({ :template => "actor_templates/show" })
  end
end
