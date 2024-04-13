# app/controllers/users/omniauth_callbacks_controller.rb:

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    #  before_action :authenticate_user!, except: [:google_oauth2_sign_out]

    def google_oauth2
         @user = User.from_omniauth(request.env['omniauth.auth'])
        if @user.persisted?
          flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
          sign_in_and_redirect @user, event: :authentication
        else
          session['devise.google_data'] = request.env['omniauth.auth'].except('extra')  
          redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
        end
    end

    def google_oauth2_sign_out
         sign_out(current_user)
        redirect_to root_path, notice: 'Google Signed out successfully.'
      end
end