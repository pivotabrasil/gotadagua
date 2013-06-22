Gotadagua::Application.routes.draw do
  devise_for :users, sign_out_via: :get,
                     controllers: { omniauth_callbacks: 'users/omniauth_callbacks' },
                     path: 'contas',
                     path_names: {sign_in: 'entrar', sign_out: 'sair'}

  devise_scope :user do
    get '/contas/connect/:network', to: redirect("/contas/auth/%{network}"), as: 'user_omniauth_connect'
  end

  root 'motives#index'

  resources :motives, only: [:new, :create, :show] do
    resources :supports, only: [:create]
  end
end
