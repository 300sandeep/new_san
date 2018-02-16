class Users::RegistrationsController < Devise::RegistrationsController
	respond_to :html
    after_action :add_clinic_role, only: [:create]

	protected
  	def add_clinic_role
  		resource.add_role :clinic
  	end
end  	