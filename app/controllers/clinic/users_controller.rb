class Clinic::UsersController < ApplicationController
  
  def home
  	@user = User.new
  end

  def create
  	@user = User.new(client_params)
    @user.check = "client"
    if @user.save
      current_user.members.create(client_id: @user.id)
      add_client_role(@user)
  	  flash[:notice] = "User is successfully created."
  	  redirect_to home_clinic_users_path
    else
  	  render :home
    end
  end

  protected
    

  private
    def client_params
			params.require(:user).permit(:email, :email_confirmation, :first_name, :last_name, :password, :password_confirmation)
		end

    def add_client_role(resource)
      resource.add_role :client
    end
end
