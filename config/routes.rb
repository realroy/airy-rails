Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products

  root 'application#index'
  match 'getAllProducts' => 'products#get_all_ajax', :via => :get
end
