Rails.application.routes.draw do
  get 'welcome/index'
  resources :part5s
  resources :part4s
  resources :part3s
  resources :part2s
  resources :part1s
  get 'results/index'
  get 'part2/index'
  get 'part1/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
