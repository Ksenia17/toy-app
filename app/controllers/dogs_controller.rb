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
    @dog = Dog.new(dog_params)

    respond_to do |format|
      if @dog.save
        format.html { redirect_to @dog, notice: "Dog was successfully created." }
        format.json { render :show, status: :created, location: @dog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end      
    # if  @dog.save
    #   redirect_to dogs_path
    # else
    #   render 'new'
    # end  
  end

  def edit
      
  end

  def update
    respond_to do |format|
      if @dog.update(dog_params)
        format.html { redirect_to @dog_params, notice: "Dog was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end    
    # if @dog.update(dog_params)
    #   redirect_to dogs_path(@dogs)
    # else
    #   render 'edit'
    # end    
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
