Rails.application.routes.draw do
  resources :restaurants do
    resources :menus
  end
  root 'static_pages#home'
  get "/static_pages/contact", :as => "contact"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
