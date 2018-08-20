Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'home#index'
#get '/' => 'home#index'



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
get '/logout' => 'sessions#destroy'
post '/logout' => 'sessions#destroy'  #do you need this route?

get '/welcome' => 'welcome#home'

#get '/signup'  => 'users#new'
#post '/signup' => 'users#create'



resources :users, only: [:new, :create]
end
