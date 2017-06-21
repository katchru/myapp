Rails.application.routes.draw do
   
   get 'registration/list'
   get 'registration/new'
   post 'registration/create'
   get 'registration/show'
   get 'registration/delete'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'registration#list'
	devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
 end
