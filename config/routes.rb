Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/animals" => "animals#index"
  get "animals/new" =>"animals#new"
  get "animals/:id" => "animals#show"
  post "animals/" => "animals#create"
  get "animals/:id/edit" => "animals#edit"
  patch "animals/:id" => "animals#update"
  delete "animals/:id" => "animals#destroy"
end
