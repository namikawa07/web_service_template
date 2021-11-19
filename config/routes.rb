Rails.application.routes.draw do
  root 'default#index'
  get 'default/index', to: 'default#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
