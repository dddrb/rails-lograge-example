Rails.application.routes.draw do
  get :logs, to: 'logs#index'

  namespace :user do
    get    :sign_in,  to: 'session#new'
    post   :sign_in,  to: 'session#create'
    delete :sign_out, to: 'session#destroy'
  end

  root 'user/session#show'
end
