class DogsController < ApplicationController
  before_action :current_dog, only: [:show, :edit, :update, :destroy]

  def index
    @dogs = Dog.all
  end

  def show
    
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create(dog_params)
    if  @dog.save
      redirect_to dogs_path
    else
      render 'new'
    end  
  end

  def edit
      
  end

  def update
    if @dog.update(dog_params)
      redirect_to dogs_path(@dogs)
    else
      render 'edit'
    end    
  end

  def destroy
    
    @dog.destroy

    redirect_to dogs_path
  end

  private

  def dog_params
    params.require.(:dog).permit(:name,:motto)
  end

  def current_dog
    @dog = Dog.find(params[:id])
  end
end
