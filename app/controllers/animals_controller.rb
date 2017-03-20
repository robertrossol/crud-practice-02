class AnimalsController < ApplicationController

def index
  sort=params[:sort] || "species"
  direction=params[:order] || "asc"
  @animals=Animal.all.order(sort => direction)
  render "index.html.erb"
end

def show
  animal_id = params[:id]
  @animal=Animal.find_by(id: animal_id)
  render "show.html.erb"
end

def new
  render "new.html.erb"
end

def create
  animal = Animal.create(species: params[:species], number: params[:number])
  animal_id=params[:id]
  redirect_to "/animals"
end

def edit
  animal_id = params[:id]
  @animal=Animal.find_by(id: animal_id)
  render "edit.html.erb"
end

def update
  animal_id = params[:id]
  @animal = Animal.find_by(id: animal_id)
  @animal.species=params[:species]
  @animal.number=params[:number]
  @animal.save
  redirect_to "/animals"
end

def destroy
  animal_id=params[:id]
  @animal=Animal.find_by(id: animal_id)
  @animal.destroy
  redirect_to "/animals"
end

end