require 'jsonapi/routing_ext'

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  jsonapi_resources :posts
end
