Rails.application.routes.draw do
 	
 	devise_scope :user do
  	root to: "users/sessions#new"
    get '/users/sign_out' => 'devise/sessions#destroy'
  end


 	devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }
  resources :users
      
end
