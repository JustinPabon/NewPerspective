Rails.application.routes.draw do
  resources :part1s
  get 'results/index'
  get 'part2/index'
  get 'part1/index'

  root 'part1s#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
