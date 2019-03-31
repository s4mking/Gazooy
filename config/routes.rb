Rails.application.routes.draw do
  
  resources :comments
  #root 'home#index'
  root 'gazooys#index'
  # resources :profiles
  # resources :hash_tags
  # resources :gazooies
  # resources :comments
    devise_for :users
    #   resources :pages
    #    root 'startup/index#index'

    # resources :users
  
    resources :gazooys, only: [:index, :show, :create, :new, :edit]
    resources :hash_tags, only: [:show]
    resources :comments, only: [:create]
    resources :news

    #get '/:id' => 'pages#show'
    #resources :pages, except: [:index]
    resources :pages, param: :slug
    post 'comments'=>'comments#create'
    resources :profiles, :except => [:destroy, :new, :create] do
        post "follow/:user_id", :to => "profiles#follow"
        delete "unfollow/:user_id", :to => "profiles#unfollow"
        get "followers/", :to => "profiles#followers"
        get "followees/", :to => "profiles#followees"
        get "mentions/", :to => "profiles#mentions"
    end
   # get '/:id' => 'pages#show'
end