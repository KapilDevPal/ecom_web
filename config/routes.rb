Rails.application.routes.draw do
  get 'product/index'
  get 'blogs/index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do
    delete '/users/auth/google_oauth2/sign_out', to: 'users/omniauth_callbacks#google_oauth2_sign_out', as: :google_oauth2_sign_out
  end
  root 'home#index'
 
end
