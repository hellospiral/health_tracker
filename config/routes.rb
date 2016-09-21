Rails.application.routes.draw do
  devise_for :users

  resources :users, :only => [:show] do
    resources :consumptions
  end

  root :to => "foods#index"

  resources :foods, :only => [:index, :new, :create]

end
