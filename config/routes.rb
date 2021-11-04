Rails.application.routes.draw do
  namespace :admin do
    get 'categories/index'
    get 'categories/new'
    get 'categories/show'
    get 'categories/edit'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
