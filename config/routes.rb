Rails.application.routes.draw do
  devise_for :users

  resources :users, :only => [:show] do
    resources :consumptions
  end


  resources :foods, :only => [:index, :new, :create]

  root :to => "foods#index"
end
