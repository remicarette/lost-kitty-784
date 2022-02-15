class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(create_pet_params)

    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    pet = Pet.find(params[:id])
    pet.update(update_pet_params)
    redirect_to pet_path(pet)
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end

  private

  def create_pet_params
    params.require(:pet).permit(:name, :specie, :phone)
  end

  def update_pet_params
    params.require(:pet).permit(:name, :specie, :phone, :lost)
  end
end
