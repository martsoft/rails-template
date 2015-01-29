Rails.application.routes.draw do

  root to: 'common/index#main'

  # Авторизация
  devise_for :users,
             skip: [:registration],
             controllers: {sessions: 'users/sessions'},
             path: '/', path_names: {sign_in: 'login', sign_out: 'logout'}


  get '/app(/*path)', to: 'common/app#index', as: :app             # For Angular application
  get '/pages/*id',  to: 'pages#show', as: :page, format: false    # For templates and static pages

  namespace :common do
  end

  # Ошибки
  match '/:status', to: 'common/errors#show', constraints: {status: /\d{3}/}, via: :all
end