Rails.application.routes.draw do

  #get 'pages/index'
  #get 'pages/show'
  #get 'pages/new'
  #get 'pages/create'
  #get 'pages/edit'
  #get 'pages/update'
  #get 'pages/destroy'
  #get 'pages/delete'

  resources :subjects do
    member do
      get :delete
    end
    collection do
      get :export
    end
  end

  resources :pages do
    member do
      get :delete
    end
    collection do
      get :export
    end
  end
    
  
  get 'demo/index'
  get 'demo/hello'
  get 'demo/bye'
  get 'demo/hola'
  get 'demo/product'
  get 'demo/array'
  get 'demo/about'
  get 'demo/contact'
  get 'product/index'
  get 'product/detail'
  
  #get ':controller(/:action(/:id))'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'demo#index'
end
