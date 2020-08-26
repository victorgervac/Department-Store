Rails.application.routes.draw do
  
  resources :departments do 
    resources :items
  end
 
  
  # get 'departments/index'
  # get 'departments/show'
  # get 'departments/new'
  # get 'departments/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
