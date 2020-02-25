Rails.application.routes.draw do
  get 'results/index'
  get 'part2/index'
  get 'part1/index'

  root 'part1#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
