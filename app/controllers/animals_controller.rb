class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new

  end

  def create
    @animal = Animal.new(animal_params)

    @animal.save!
    redirect_to  :action => 'index',  notice: 'Animal was successfully updated.'  
  rescue => e      
    render :'new'
          
  end

  def animal_params

    params.require(:animal).permit(:name,:note,:image_animal)

  end

end
