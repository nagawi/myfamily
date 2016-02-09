class FishesController < ApplicationController

  def index
    @fishes = Fish.all
  end

  def new
    @fish = Fish.new

  end

  def create
    @fish = Fish.new(fish_params)

    @fish.save!
    redirect_to  :action => 'index',  notice: 'Fish was successfully updated.' 
  rescue => e
    render :'new'

  end

  def fish_params

    params.require(:fish).permit(:name,:note)

  end
end
