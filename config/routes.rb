Rails.application.routes.draw do
  root 'fusens#index'

  devise_for :users

#  root_to: "home#index"
  resources :fusens
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "position/set_width", :concroller => :position
  get "position/set_position", :concroller => :position
  get "position/set_text", :concroller => :position

end
