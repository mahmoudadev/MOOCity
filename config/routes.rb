Rails.application.routes.draw do

  resources :courses do
    resources :lectures , :exec =>[:new, :create , :index, :show ,:update , :edit]  do
      put 'like' => "lectures#upvote"
      put 'spam' => "lectures#spam"
    end
  end
  resources :lectures , :only => [:new , :show, :create, :index ,:update,  ]
  root to: "courses#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  mount Commontator::Engine => '/commontator'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
