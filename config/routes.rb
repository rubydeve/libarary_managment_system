Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'model/issue_book'
  get 'model/issue'
  get 'model/book'
  get 'issue/books'
  devise_for :users , skip: :all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   resources :welcome , only: [:index]
   resources :users do
   	collection do
   		get :signup
      get :signin
      post :user_signin
      post :user_signup
      get  :signout
   	end
   end

   resources :books

   resources :dashboards, only: [:index]

   root "welcome#index"

end
