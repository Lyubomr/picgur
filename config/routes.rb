Rails.application.routes.draw do
  get 'images' => 'images#index'
  get 'images/new' => 'images#new'
  post 'images' => 'images#create'
  get 'images/:id' => 'images#show', as: 'image'
end
