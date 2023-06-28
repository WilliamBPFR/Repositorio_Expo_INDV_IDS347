Rails.application.routes.draw do
  get 'notas/index'
  get 'notas/show'
  get 'notas/new'
  get 'notas/create'
  get 'notas/edit'
  get 'notas/update'
  resources :notas
  root 'notas#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
