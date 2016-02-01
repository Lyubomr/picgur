Rails.application.routes.draw do
  get 'images' => 'images#index'
  get 'images/:id' => 'images#show', as: 'image'
end
