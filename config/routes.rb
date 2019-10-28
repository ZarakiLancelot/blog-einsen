Rails.application.routes.draw do
  devise_for :usuarios
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articulos
=begin
  get "/articulos"              index
  post "/articulos"             create
  delete "/articulos/:id"       delete
  get "/articulos/:id"          show
  get "/articulos/new"          new
  get "/articulos/:id/edit"     edit
  patch "/articulos/:id"        update
  put "/articulos/:id"          update
=end

  root 'welcome#index'
end
