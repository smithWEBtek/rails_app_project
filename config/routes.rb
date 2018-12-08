Rails.application.routes.draw do
 
root 'home#index'
#get '/' => 'home#index'



  resources :distilleries do
    # nested resource for bourbon
        resources :bourbons, only: [:show, :index, :new, :edit]
         end
 resources :bourbons

 resources :stockists
 
 resources :bourbon_stockists

 get '/rare' => 'bourbons#rare'
 get '/oldest' =>'bourbons#oldest'

#get '/bourbon_stockists/new' => 'bourbon_stockists#new'
#post '/bourbon_stockists' => 'bourbon_stockists#create'
#get '/bourbon_stockists' => 'bourbon_stockists#index'


  get 'bourbons/:id/bourbon_data', to: 'bourbons#bourbon_data'

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'
post '/logout' => 'sessions#destroy'  #do you need this route?

get '/auth/facebook/callback' => 'sessions#create'

get '/welcome' => 'welcome#home'

#get '/signup'  => 'users#new'
#post '/signup' => 'users#create'



resources :users, only: [:new, :create]
end
