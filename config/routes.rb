Rails.application.routes.draw do

# Blog Routing

# Redirect to kryptonic_cms at host /admin
mount KryptonicCms::Engine, at: '/admin'

  get 'search', to: 'posts#search', as: :search
  get '/:slug', to: 'posts#show', as: :post

  root to: 'posts#index'
end
