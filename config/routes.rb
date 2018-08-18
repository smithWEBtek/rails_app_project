Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#home'

  resources :distilleries do
    # nested resource for bourbon
        resources :bourbons, only: [:show, :index, :new, :edit]
         end
 resources :bourbons

 resources :stockists

 resources :bourbon_stockists

#get '/bourbon_stockists/new' => 'bourbon_stockists#new'
#post '/bourbon_stockists' => 'bourbon_stockists#create'
#get '/bourbon_stockists' => 'bourbon_stockists#index'

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
post '/logout' => 'sessions#destroy'

#get '/signup'  => 'users#new'
#post '/signup' => 'users#create'



resources :users, only: [:new, :create]
end
