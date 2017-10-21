class Users::SessionsController < Devise::SessionsController
  layout false

  skip_before_action :verify_authenticity_token
# before_action :configure_sign_in_params, only: [:create]

# GET /resource/sign_in
  def new
    puts " super new"
    super
  end

# POST /resource/sign_in
  def create
    puts "super create"
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)
    yield resource if block_given?
    puts "*****>>>>> block_given"

    respond_to do |format|
      puts "*******>>>> "
      format.html { redirect_to( root_path) }
      format.js

    end
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) ||
        if resource.is_a?(User)
          puts "****>>>>> user"
        else
          #super
        end
  end


  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
