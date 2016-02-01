Rails.application.routes.draw do
  root 'images#index'
  get 'images' => 'images#index'
  get 'images/new' => 'images#new'
  get 'images/:id/edit' => 'images#edit', as: 'edit_image'
  patch 'images/:id' => 'images#update'
  post 'images' => 'images#create'
  get 'images/:id' => 'images#show', as: 'image'
end
