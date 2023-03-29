class PetsController < ApplicationController
    def 
end
aclass PetsController < ApplicationController
def index
  @pets = current_user.pets
end

def create
  @pet = current_user.pets.build(pet_params)
  if @pet.save
    redirect_to pets_path, notice: "Pet was successfully created."
  else
    render "new"
  end
end

private

def pet_params
  params.require(:pet).permit(:name, :species, :breed, :age)
end
end
