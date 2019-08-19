Rails.application.routes.draw do

 

  resources:events, only:[:index, :new, :create, :show]
  devise_for :users
  root to: 'static_pages#index'
  devise_scope :user do 

  	get '/users/sign_out' => 'devise/sessions#destroy'

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
