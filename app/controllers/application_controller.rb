class ApplicationController < ActionController::Base
  protect_from_forgery
  #before_filter :doit_etre_connecte, :except => [:index, :new, :user_signed_in]

  def doit_etre_connecte
    unless user_signed_in?
      flash[:notice] = 'Vous devez vous connecter pour consulter la page.'
      redirect_to root_path
    end
  end

  protected
      
      def after_sign_in_path_for(resource)
      	if resource.sign_in_count <= 1 
          #UserMailer.welcome_email(resource).deliver
	      	flash[:notice] = "Bienvenue Inscription Reussie. Un message vous a ete envoye." 
	      	root_path
	    else 
	      	flash[:notice] = "Bienvenue." 
	      	root_path
      	end
      	
      end

      # def after_registration_path_for(resource)
      #   registration_confirmation(resource)
      # end


end
