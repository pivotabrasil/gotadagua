Gotadagua::Application.routes.draw do
  root 'motives#index'
  resources :motives, only: [:new, :create, :show]
end
