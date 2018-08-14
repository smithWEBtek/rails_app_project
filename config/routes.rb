Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   root ‘bourbons#index’

  resources :distilleries do
    # nested resource for bourbon
        resources :bourbons, only: [:show, :index, :new, :edit]
         end
 resources :bourbons

 resources :stockists

 root ‘bourbons#index’

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
post '/logout' => 'sessions#destroy'

resources :users, only: [:new, :create]
end
