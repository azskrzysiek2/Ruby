Rails.application.routes.draw do
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/home',   to: 'static_pages#home'
  get  '/klubs',   to: 'klubs#index'
  get  '/trofeums',   to: 'trofeums#index'
  get  '/historia',   to: 'static_pages#historia'
  
  get  '/contact',   to: 'static_pages#contact'
  root 'static_pages#home'

  resources :trofeums
  resources :klubs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
