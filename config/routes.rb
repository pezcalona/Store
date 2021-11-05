Rails.application.routes.draw do
  namespace :admin do
    get 'roles/index'
    get 'roles/new'
    get 'roles/show'
    get 'roles/edit'
  end
  namespace :admin do
    get 'status/index'
    get 'status/new'
    get 'status/show'
    get 'status/edit'
  end
  namespace :admin do
    get 'carts/index'
    get 'carts/new'
    get 'carts/show'
    get 'carts/edit'
  end
  namespace :admin do
    get 'produts/index'
    get 'produts/new'
    get 'produts/show'
    get 'produts/edit'
  end
  namespace :admin do

  #categories

    get 'categories',           to: 'categories#index',     as: 'categories'
    get 'categories/new',       to: 'categories#new',       as: 'new_category'
    get 'categories/:id',       to: 'categories#show',      as: 'category'
    get 'categories/:id/edit',  to: 'categories#edit',      as: 'edit_category'

    post 'categories',           to: 'categories#create'
    put 'categories/:id',       to: 'categories#update'
    patch 'categories/:id',      to: 'categories#update'
    delete 'categories/:id',    to: 'categories#destruccion'

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
