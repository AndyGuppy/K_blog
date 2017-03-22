Rails.application.routes.draw do

  
# Blog Routing
  devise_for :users

# Redirect to kryptonic_cms routes for /admin
  mount KryptonicCms::Engine, at: '/admin'

# search
  get 'search', to: 'posts#search', as: :search

# Specific blogs by slugs
  get '/:slug', to: 'posts#show', as: :post

  root to: 'posts#index'
end
