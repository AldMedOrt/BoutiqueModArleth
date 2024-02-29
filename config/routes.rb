Rails.application.routes.draw do
  resources :categoria
  resources :detalle_venta
  resources :comprobantes
  resources :productos
  resources :clientes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
