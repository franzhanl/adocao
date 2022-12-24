class UserProfileController < ApplicationController

  def new
    @users = User.new
  end

  def create
    @users = User.new(params_user)
    $status_users_save = false
    if @users.save
      $status_users_save = true
      #sign_in(@users, bypass: true)
      bypass_sign_in(@users)
      redirect_to site_home_index_path, notice: "Usuário cadastrado com sucesso!"
    else
      error_message
    end
  end

  def params_user
    params.require(:user).permit( :first_name, :last_name, :address, :gender, :birthday, :email, :phone, :password, :password_confirmation )
  end

  def error_message
    flash.notice = []
    if @users.first_name.blank? then (flash.notice << "Nome obrigatório!") end
    if @users.last_name.blank? then (flash.notice << "Sobrenome obrigatório!") end
    if @users.address.blank? then (flash.notice << "Endereço obrigatório!") end
    if @users.gender.blank? then (flash.notice << "Sexo obrigatório!") end
    if @users.birthday.blank? then (flash.notice << "Data obrigatória!") end  
    if @users.phone.blank? then (flash.notice << "Fone obrigatório!") end
    if @users.email.blank? then (flash.notice << "Email obrigatório!") end
    if @users.password.blank? then (flash.notice << "Senha obrigatória!") end
    if @users.last_name.blank? then (flash.notice << "Confirmação de senha obrigatória!") end
  end

end
