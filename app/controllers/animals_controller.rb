class AnimalsController < ApplicationController
  
  def new
     
  end

  def show
    $show_animal = Animal.find(params[:id])
<<<<<<< HEAD
    fix_description
    user_logged
=======
    $description_animal = $show_animal.animal_description.gsub(/[\r\n]/, '\n') #Bug line break, corrected
    
>>>>>>> d584aa15a1c669f77c6e9f44343bc15b31dbd662
  end

  def edit
    
<<<<<<< HEAD
=======
    
>>>>>>> d584aa15a1c669f77c6e9f44343bc15b31dbd662
  end

  def create
    @animal = Animal.new(params_animal)
    if  @animal.save
      redirect_to site_home_index_path, notice: "Animal cadastrado com sucesso!"
    else
      redirect_to site_home_index_path
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
<<<<<<< HEAD
    if @animal.destroy
=======
    if  @animal.destroy
>>>>>>> d584aa15a1c669f77c6e9f44343bc15b31dbd662
      redirect_to site_home_index_path, notice: "Animal excluído com sucesso!"
    else
      redirect_to site_home_index_path
    end
  end


  def params_animal
    params.require(:animal).permit(:animal_name, :animal_type, :animal_size, :animal_age, :animal_gender, :animal_description, :avatar, :user_id )
  end

<<<<<<< HEAD
  def fix_description
    $description_animal = $show_animal.animal_description.gsub(/[\r\n]/, '\n') #Fix bug, line break 
  end

  def user_logged
    $logged_user_id = 0
    $logged_user_id = current_user.id if user_signed_in?
  end

=======
>>>>>>> d584aa15a1c669f77c6e9f44343bc15b31dbd662
end
