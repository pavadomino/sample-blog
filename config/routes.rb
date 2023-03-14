Rails.application.routes.draw do
  get 'home/index'
  get 'about' => 'about#show'

  resource :terms, only: [:show]
  resources :articles do
    resources :comments, only: [:create]
  end
  resource :contacts, only: [:new, :create]#, path_names: { :new => '' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
