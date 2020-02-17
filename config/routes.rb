Rails.application.routes.draw do
  get 'cocktails/home'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#home'
  resources :cocktails, only: [:home, :index, :show, :new, :create] do
    resources :ingredients, only: [:new, :show]
  end

end
