Rails.application.routes.draw do
  
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
