Rails.application.routes.draw do

  root to: "inicial#index"
    resources :inicial
    resources :senadores

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
